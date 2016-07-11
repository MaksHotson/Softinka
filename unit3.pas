unit Unit3;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, db, sqldb, FileUtil, DateTimePicker, Forms, Controls,
  Graphics, Dialogs, StdCtrls, DbCtrls, ComCtrls, Buttons, ActnList, ExtCtrls,
  Spin, strutils;

type

  { TTaskEditForm }

  TTaskEditForm = class(TForm)
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    tskEditColorButton: TColorButton;
    tskEditColorDialog: TColorDialog;
    tskEditPriorityLabel: TLabel;
    tskEditPrioritySpinEdit: TSpinEdit;
    tskwdelAction: TAction;
    tskwedtAction: TAction;
    tskwaddAction: TAction;
    tskActionList: TActionList;
    BitBtn16: TBitBtn;
    BitBtn17: TBitBtn;
    BitBtn18: TBitBtn;
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    DataSource3: TDataSource;
    ToolBar6: TToolBar;
    tskPeopleDBLookupComboBox: TDBLookupComboBox;
    tskProjDBLookupComboBox: TDBLookupComboBox;
    SQLQuery2: TSQLQuery;
    SQLQuery3: TSQLQuery;
    tskEditBreefEdit: TEdit;
    tskEditDiscardButton: TButton;
    tskEditDoneCheckBox: TCheckBox;
    tskEditStartedCheckBox: TCheckBox;
    tskEditEditButton: TButton;
    tskEditCreatedDateTimePicker: TDateTimePicker;
    tskEditMemo: TMemo;
    tskEditNewButton: TButton;
    SQLQuery1: TSQLQuery;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure tskEditEditButtonClick(Sender: TObject);
    procedure tskEditNewButtonClick(Sender: TObject);
    procedure tskwaddActionExecute(Sender: TObject);
    procedure tskwedtActionExecute(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  TaskEditForm: TTaskEditForm;

implementation
uses
  Unit1;
{$R *.lfm}

{ TTaskEditForm }

procedure TTaskEditForm.FormActivate(Sender: TObject);
begin
  BitBtn1.Caption := '';
  BitBtn2.Caption := '';
  BitBtn16.Caption := '';
  BitBtn17.Caption := '';
  BitBtn18.Caption := '';

  SQLQuery2.Active := True;
  SQLQuery3.Active := True;
  tskEditCreatedDateTimePicker.Date := Now;
  if(tskAct = EDT) then begin
    tskEditCreatedDateTimePicker.Date := Form1.SQLQuery5.FieldByName('created').AsDateTime;
    tskEditDoneCheckBox.Checked := Form1.SQLQuery5.FieldByName('done').AsBoolean;
    tskEditStartedCheckBox.Checked := Form1.SQLQuery5.FieldByName('started').AsBoolean;
    if(not Form1.SQLQuery5.FieldByName('people_key').IsNull) then
      tskPeopleDBLookupComboBox.KeyValue := Form1.SQLQuery5.FieldByName('people_key').AsInteger;
    if(not Form1.SQLQuery5.FieldByName('theme_key').IsNull) then
      tskProjDBLookupComboBox.KeyValue := Form1.SQLQuery5.FieldByName('theme_key').AsInteger;
    tskEditBreefEdit.Text := Form1.SQLQuery5.FieldByName('breef').AsString;
    tskEditMemo.Text := Form1.SQLQuery5.FieldByName('text').AsString;
    if(not Form1.SQLQuery5.FieldByName('priority').IsNull) then
      tskEditPrioritySpinEdit.Value := Form1.SQLQuery5.FieldByName('priority').AsInteger
    else
      tskEditPrioritySpinEdit.Value := 0;
    if((not Form1.SQLQuery5.FieldByName('color_red').IsNull) and
       (not Form1.SQLQuery5.FieldByName('color_green').IsNull) and
       (not Form1.SQLQuery5.FieldByName('color_blue').IsNull)) then
      tskEditColorButton.ButtonColor := RGBToColor(Byte(Form1.SQLQuery5.FieldByName('color_red').AsInteger),
                                             Byte(Form1.SQLQuery5.FieldByName('color_green').AsInteger),
                                             Byte(Form1.SQLQuery5.FieldByName('color_blue').AsInteger))
    else
      tskEditColorButton.ButtonColor := clBtnFace;
  end;
end;

procedure TTaskEditForm.BitBtn1Click(Sender: TObject);
begin
  TaskEditForm.Close;
end;

procedure TTaskEditForm.FormCreate(Sender: TObject);
begin

end;

procedure TTaskEditForm.tskEditEditButtonClick(Sender: TObject);
begin
  tskwaddActionExecute(Sender);
end;

procedure TTaskEditForm.tskEditNewButtonClick(Sender: TObject);
begin
  tskwedtActionExecute(Sender);
end;

procedure TTaskEditForm.tskwaddActionExecute(Sender: TObject);
var
  SqlString: string;
  MemoString: string;
  PeopleString: string;
  TaskString: string;
  MaxKey: longint;
  ExpStr: string;
begin
  if(tskPeopleDBLookupComboBox.KeyValue = null)
  then begin
    PeopleString := 'null';
  end else begin
    PeopleString := IntToStr(tskPeopleDBLookupComboBox.KeyValue);
  end;
  if(tskProjDBLookupComboBox.KeyValue = null)
  then begin
    TaskString := 'null';
  end else begin
    TaskString := IntToStr(tskProjDBLookupComboBox.KeyValue);
  end;
  ExpStr := FormatDateTime('yyyy-mm-dd', tskEditCreatedDateTimePicker.Date);
  MemoString := DelChars(DelChars(tskEditMemo.Lines.Text, #13), #10);
  SqlString := ' (breef, text, created, done, started, people_key, theme_key' +
  ', priority, color_red, color_green, color_blue) VALUES ('''+
  tskEditBreefEdit.Text+''', '''+MemoString+''', '''+ExpStr+''', '+
  IntToStr(Integer(tskEditDoneCheckBox.Checked))+', '+
  IntToStr(Integer(tskEditStartedCheckBox.Checked))+', '+
  PeopleString+', '+
  TaskString+', '+
  IntToStr(tskEditPrioritySpinEdit.Value)+', '+
  IntToStr(Red(tskEditColorButton.ButtonColor))+', '+
  IntToStr(Green(tskEditColorButton.ButtonColor))+', '+
  IntToStr(Blue(tskEditColorButton.ButtonColor))+', '+
  ');';
  SqlString := 'INSERT INTO task'+SqlString;

  SQLQuery1.Close;
  SQLQuery1.SQL.Clear;
  SQLQuery1.SQL.Add(SqlString);
  SQLQuery1.ExecSQL;
  Form1.SQLTransaction1.Commit;
  TaskEditForm.Close;
end;

procedure TTaskEditForm.tskwedtActionExecute(Sender: TObject);
var
  SqlString: string;
  MemoString: string;
  PeopleString: string;
  TaskString: string;
  MaxKey: longint;
  CurrKey: longint;
  ExpStr: string;
begin
  CurrKey := CurTskKey;
  ExpStr := FormatDateTime('yyyy-mm-dd', tskEditCreatedDateTimePicker.Date);
  MemoString := DelChars(DelChars(tskEditMemo.Lines.Text, #13), #10);

  if(tskPeopleDBLookupComboBox.KeyValue = null)
  then begin
    PeopleString := 'null';
  end else begin
    PeopleString := IntToStr(tskPeopleDBLookupComboBox.KeyValue);
  end;
  if(tskProjDBLookupComboBox.KeyValue = null)
  then begin
    TaskString := 'null';
  end else begin
    TaskString := IntToStr(tskProjDBLookupComboBox.KeyValue);
  end;
//  Form1.SQLQuery4.SQL.Add('update theme set theme=''' + Form1.Edit1.Text + ''';');

  SqlString := ' breef = '''+tskEditBreefEdit.Text+
  ''', text = '''+MemoString+
  ''', created = '+ExpStr+
  ', done = '+IntToStr(Integer(tskEditDoneCheckBox.Checked))+
  ', started = '+IntToStr(Integer(tskEditStartedCheckBox.Checked))+
  ', people_key = '+PeopleString+
  ', theme_key = '+TaskString+
  ', priority = '+IntToStr(tskEditPrioritySpinEdit.Value)+
  ', color_red = '+IntToStr(Red(tskEditColorButton.ButtonColor))+
  ', color_green = '+IntToStr(Green(tskEditColorButton.ButtonColor))+
  ', color_blue = '+IntToStr(Blue(tskEditColorButton.ButtonColor))+
  ' where key = '+IntToStr(CurrKey)+';';
  SqlString := 'update task set'+SqlString;

  SQLQuery1.Close;
  SQLQuery1.SQL.Clear;
  SQLQuery1.SQL.Add(SqlString);
  SQLQuery1.ExecSQL;
  Form1.SQLTransaction1.Commit;
  TaskEditForm.Close;
end;

end.

