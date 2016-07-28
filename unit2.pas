unit Unit2;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, DateTimePicker, Forms, Controls, Graphics,
  Dialogs, StdCtrls, ExtDlgs, Calendar, EditBtn, Spin, DbCtrls, ExtCtrls,
  ComCtrls, Buttons, ActnList, dateutils, sqlite3conn, sqldb, db, strutils;

type

  { TForm2 }

  TForm2 = class(TForm)
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    MemTabComboBox: TComboBox;
    memEditColorButton: TColorButton;
    memEditColorDialog: TColorDialog;
    memEditPriorityLabel: TLabel;
    memEditPrioritySpinEdit: TSpinEdit;
    memwdelAction: TAction;
    memwedtAction: TAction;
    memwaddAction: TAction;
    memActionList: TActionList;
    BitBtn16: TBitBtn;
    BitBtn17: TBitBtn;
    BitBtn18: TBitBtn;
    memEditDiscardButton: TButton;
    memEditNewButton: TButton;
    memEditEditButton: TButton;
    memEditMakeTaskButton: TButton;
    memEditDoneCheckBox: TCheckBox;
    DataSource1: TDataSource;
    memEditExpirationDateEdit: TDateEdit;
    memEditExpirationDateTimePicker: TDateTimePicker;
    memEditTempDBEdit: TDBEdit;
    memEditBreefEdit: TEdit;
    memEditTempLabel: TLabel;
    memEditIntervalListBox: TListBox;
    memEditMemo: TMemo;
    memEditHoursSpinEdit: TSpinEdit;
    memEditMinutesSpinEdit: TSpinEdit;
    SQLQuery1: TSQLQuery;
    Timer1: TTimer;
    Timer2: TTimer;
    ToolBar6: TToolBar;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure memEditDiscardButtonClick(Sender: TObject);
    procedure memEditIntervalListBoxSelectionChange(Sender: TObject;
      User: boolean);
    procedure memEditNewButtonClick(Sender: TObject);
    procedure memEditEditButtonClick(Sender: TObject);
    procedure memEditBreefEditChange(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: boolean);
    procedure FormCreate(Sender: TObject);
    procedure memwaddActionExecute(Sender: TObject);
    procedure memwdelActionExecute(Sender: TObject);
    procedure memwedtActionExecute(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  Form2: TForm2;

implementation
uses
  Unit1, Unit3, Unit4;

var
  i: Integer;

{$R *.lfm}

{ TForm2 }

procedure TForm2.FormActivate(Sender: TObject);
begin
  BitBtn1.Caption := '';
  BitBtn2.Caption := '';
  BitBtn16.Caption := '';
  BitBtn17.Caption := '';
  BitBtn18.Caption := '';

  if(NewMemRec = False)
  then begin
//    memEditEditButton.Visible := True;
    memEditEditButton.Caption := 'Save Edt';
    memEditNewButton.Caption := 'Save New';
    SQLQuery1.Close;
    SQLQuery1.SQL.Clear;
    SQLQuery1.SQL.Add('select * from mem where key = ' + IntToStr(CurMemKey) + ';');
    SQLQuery1.Open;
    memEditBreefEdit.Text := SQLQuery1.FieldByName('breef').AsString;
    memEditMemo.Lines.Clear;
    memEditMemo.Lines.Add(SQLQuery1.FieldByName('text').AsString);
    memEditExpirationDateEdit.Date := SQLQuery1.FieldByName('expiration').AsDateTime;
    memEditExpirationDateTimePicker.Date := SQLQuery1.FieldByName('expiration').AsDateTime;

    memEditHoursSpinEdit.Value := HourOf(SQLQuery1.FieldByName('expiration').AsDateTime);
    memEditMinutesSpinEdit.Value := MinuteOf(SQLQuery1.FieldByName('expiration').AsDateTime);
    memEditDoneCheckBox.Checked := SQLQuery1.FieldByName('done').AsBoolean;
    if(memEditDoneCheckBox.Checked) then begin
//      Form2.Color := RGBToColor($77, $FF, $77);
      Form2.Color := $77FF77;
    end else if(memEditExpirationDateEdit.Date <= Date) then begin
      Form2.Color := $7777FF;
    end else begin
      Form2.Color := clDefault;
    end;
    if(not SQLQuery1.FieldByName('priority').IsNull) then
      memEditPrioritySpinEdit.Value := SQLQuery1.FieldByName('priority').AsInteger
    else
      memEditPrioritySpinEdit.Value := 0;
    if((not SQLQuery1.FieldByName('color_red').IsNull) and
       (not SQLQuery1.FieldByName('color_green').IsNull) and
       (not SQLQuery1.FieldByName('color_blue').IsNull)) then
      memEditColorButton.ButtonColor := RGBToColor(Byte(SQLQuery1.FieldByName('color_red').AsInteger),
                                                   Byte(SQLQuery1.FieldByName('color_green').AsInteger),
                                                   Byte(SQLQuery1.FieldByName('color_blue').AsInteger))
    else
      memEditColorButton.ButtonColor := clBtnFace;
  end
  else begin
    memEditExpirationDateEdit.Date := Today;
    memEditHoursSpinEdit.Value := HourOf(Time);
    memEditMinutesSpinEdit.Value := MinuteOf(Time);
    memEditMemo.Lines.Clear;
    memEditEditButton.Visible := False;
    memEditNewButton.Caption := 'Save';
    memEditBreefEdit.Text := '';
    Form2.Color := clDefault;
  end;

  i := 0;
  if(MemTabComboBox.Text <> '') then
  while MemTabComboBox.Text <> Form1.MemTabsStringGrid.Cells[0,i] do
  begin
    i := i + 1;
  end;
end;

procedure TForm2.FormCloseQuery(Sender: TObject; var CanClose: boolean);
begin
  if(mems_ind < mems_len) then begin
    CanClose := False;
    mems_ind := mems_ind + 1;
    CurMemKey := mems[mems_ind];
    Form2.FormActivate(Sender);
  end else begin
    CanClose := True;
  end;
end;

procedure TForm2.FormCreate(Sender: TObject);
begin
  CurMemKey := 0;
  NewMemRec := True;
end;

procedure TForm2.memwaddActionExecute(Sender: TObject);
var
  SqlString: string;
  Memo1String: string;
  MaxKey: longint;
  MaxKeyStr: string;
  ExpStr: string;
begin
  SqlString := 'SELECT MAX(key) as mem_key FROM mem;';
  SQLQuery1.Close;
  SQLQuery1.SQL.Clear;
  SQLQuery1.SQL.Add(SqlString);
  SQLQuery1.Open;
  MaxKeyStr := IntToStr((StrToInt(SQLQuery1.FieldByName('mem_key').AsString)+1));

  ExpStr := FormatDateTime('YYYY-MM-DD', memEditExpirationDateEdit.Date);
  ExpStr := ExpStr + ' ' + IntToStr(memEditHoursSpinEdit.Value) + ':' + IntToStr(memEditMinutesSpinEdit.Value)+':00';
  Memo1String := DelChars(DelChars(memEditMemo.Lines.Text, #13), #10);
  SqlString := ' (key, breef, text, expiration, done, priority, color_red, color_green, color_blue, tab_key) VALUES ('''+
  MaxKeyStr+''', '''+
  memEditBreefEdit.Text+''', '''+
  Memo1String+''', '''+
  ExpStr+''', '+
  IntToStr(Integer(memEditDoneCheckBox.Checked))+', '+
  IntToStr(memEditPrioritySpinEdit.Value)+', '+
  IntToStr(Red(memEditColorButton.ButtonColor))+', '+
  IntToStr(Green(memEditColorButton.ButtonColor))+', '+
  IntToStr(Blue(memEditColorButton.ButtonColor))+', '+
  IntToStr(i)+
  ');';
  SqlString := 'INSERT INTO mem'+SqlString;

//  memEditTempLabel.Caption:=SqlString;
//  memEditMemo.Text := SqlString;

  SQLQuery1.Close;
  SQLQuery1.SQL.Clear;
  SQLQuery1.SQL.Add(SqlString);
  SQLQuery1.ExecSQL;
  Form1.SQLTransaction1.Commit;
  Form2.Close;
end;

procedure TForm2.memwdelActionExecute(Sender: TObject);
begin

end;

procedure TForm2.memwedtActionExecute(Sender: TObject);
var
  SqlString: string;
  Memo1String: string;
  MaxKey: longint;
  MaxKeyStr: string;
  ExpStr: string;
  DoneIntStr: string;
begin
  ExpStr := FormatDateTime('YYYY-MM-DD', memEditExpirationDateEdit.Date);
  ExpStr := ExpStr + ' ' + IntToStr(memEditHoursSpinEdit.Value) + ':' + IntToStr(memEditMinutesSpinEdit.Value) + ':00';
  Memo1String := DelChars(DelChars(memEditMemo.Lines.Text, #13), #10);
  if(memEditDoneCheckBox.Checked) then DoneIntStr := '1'
  else DoneIntStr := '0';

  SqlString := 'UPDATE mem SET'+
  ' breef='''+memEditBreefEdit.Text+
  ''', text='''+Memo1String+
  ''', expiration='''+ExpStr+
  ''', done='+DoneIntStr+
  ', priority = '+IntToStr(memEditPrioritySpinEdit.Value)+
  ', color_red = '+IntToStr(Red(memEditColorButton.ButtonColor))+
  ', color_green = '+IntToStr(Green(memEditColorButton.ButtonColor))+
  ', color_blue = '+IntToStr(Blue(memEditColorButton.ButtonColor))+
  ', tab_key = '+IntToStr(i)+
  ' WHERE key='+IntToStr(CurMemKey)+';';

  memEditTempLabel.Caption:=SqlString;

  SQLQuery1.Close;
  SQLQuery1.SQL.Clear;
  SQLQuery1.SQL.Add(SqlString);
  SQLQuery1.ExecSQL;
  Form1.SQLTransaction1.Commit;
  Form2.Close;
end;

procedure TForm2.Timer1Timer(Sender: TObject);
var
  HH,MM,SS,MS: Word;
begin
  DecodeTime(Time,HH,MM,SS,MS);
//  ShowMessage('Second!!!');
  if(SS = 0)
  then begin
    Timer2.Enabled := True;
    Timer1.Enabled := False;
//    ShowMessage('Timer2 start!!!');
    Timer2Timer(Sender);
  end;
end;

procedure TForm2.Timer2Timer(Sender: TObject);
var
  SqlString: string;
  i: integer;
begin
  mems_len := 0;
  mems_ind := 0;
//  SqlString := 'SELECT "key", expiration FROM mem WHERE expiration < date('+'''now'''+') AND done == '''+'0'+''';';
//  SqlString := 'select "key" from mem where "done" = 0;';
//  SqlString := 'select "key" from mem where (expiration < date('+'''now'''+')) and ("done" = 0);';
  SqlString := 'select "key" from mem where (expiration < date('+'''now'''+')) and done = 0;';
//  SqlString := 'select "key" from mem where (expiration < date('+'''now'''+')) and tab_key = 1;';
//  SqlString := 'SELECT "key", expiration FROM mem WHERE expiration < datetime('+'''now'''+');';
  SQLQuery1.Close;
  SQLQuery1.SQL.Clear;
  SQLQuery1.SQL.Add(SqlString);
  SQLQuery1.Open;
  SQLQuery1.First;
  while not SQLQuery1.EOF do
  begin
    mems_len := mems_len + 1;
    SetLength(mems, mems_len+1);
    mems[mems_len] := StrToInt(SQLQuery1.FieldByName('key').AsString);
    SQLQuery1.Next;
  end;
  if(mems_len > 0) then begin
    NewMemRec := False;
    mems_ind := 1;
    CurMemKey := mems[mems_ind];
    if((not Form1.Active) and (not Form2.Active) and (not TaskEditForm.Active) and (not TaskDescEditForm.Active)) then begin
//      Form1.SQLite3Connection1.Connected := False;
      Form2.OnActivate(Sender);
      Form2.Show;
    end else begin
      MemWait := True;
    end;
  end;
end;

procedure TForm2.memEditNewButtonClick(Sender: TObject);
begin
  memwaddActionExecute(Sender);
end;

procedure TForm2.memEditEditButtonClick(Sender: TObject);
begin
  memwedtActionExecute(Sender);
end;

procedure TForm2.memEditBreefEditChange(Sender: TObject);
begin

end;

procedure TForm2.memEditDiscardButtonClick(Sender: TObject);
begin
  Form2.Close;
end;

procedure TForm2.BitBtn1Click(Sender: TObject);
begin
  Form2.Close;
end;

procedure TForm2.BitBtn2Click(Sender: TObject);
begin
  tskAct := NEW;
  TaskEditForm.tskEditCreatedDateTimePicker.Date := Now;
  TaskEditForm.tskEditDoneCheckBox.Checked := False;
  TaskEditForm.tskEditStartedCheckBox.Checked := False;
  TaskEditForm.tskEditBreefEdit.Text := memEditBreefEdit.Text;
  TaskEditForm.tskEditMemo.Text := memEditMemo.Text;
  TaskEditForm.tskEditPrioritySpinEdit.Value := 0;
  TaskEditForm.tskEditColorButton.ButtonColor := clBtnFace;
  TaskEditForm.Show;
end;

procedure TForm2.memEditIntervalListBoxSelectionChange(Sender: TObject;
  User: boolean);
var
  exp_time: TDateTime;
begin
  if(memEditIntervalListBox.GetSelectedText = '5 минут') then exp_time := IncMinute(now, 5);
  if(memEditIntervalListBox.GetSelectedText = '15 минут') then exp_time := IncMinute(now, 15);
  if(memEditIntervalListBox.GetSelectedText = '30 минут') then exp_time := IncMinute(now, 30);
  if(memEditIntervalListBox.GetSelectedText = '1 час') then exp_time := IncHour(now, 1);
  if(memEditIntervalListBox.GetSelectedText = '2 часа') then exp_time := IncHour(now, 2);
  if(memEditIntervalListBox.GetSelectedText = '5 часов') then exp_time := IncHour(now, 5);
  if(memEditIntervalListBox.GetSelectedText = '1 день') then exp_time := IncDay(now, 1);
  if(memEditIntervalListBox.GetSelectedText = '2 дня') then exp_time := IncDay(now, 2);
  if(memEditIntervalListBox.GetSelectedText = '1 неделя') then exp_time := IncWeek(now, 1);
  if(memEditIntervalListBox.GetSelectedText = '2 недели') then exp_time := IncWeek(now, 2);
  if(memEditIntervalListBox.GetSelectedText = '1 месяц') then exp_time := IncMonth(now, 1);
  if(memEditIntervalListBox.GetSelectedText = '2 месяца') then exp_time := IncMonth(now, 2);
  if(memEditIntervalListBox.GetSelectedText = '1 год') then exp_time := IncYear(now, 1);

  memEditExpirationDateEdit.Date := exp_time;
  memEditHoursSpinEdit.Value := HourOf(exp_time);
  memEditMinutesSpinEdit.Value := MinuteOf(exp_time);
end;

end.

