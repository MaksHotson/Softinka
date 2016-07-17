unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, db, BufDataset, sqlite3conn, sqldb, FileUtil,
  DateTimePicker, Forms, Controls, Graphics, Dialogs, DBGrids, StdCtrls, Unit2,
  LCLType, ExtCtrls, grids, ComCtrls, DbCtrls, ExtDlgs, Menus, ActnList,
  Buttons, Unit3, Unit4, types;

type

  { TForm1 }

  TForm1 = class(TForm)
    BitBtn13: TBitBtn;
    BitBtn14: TBitBtn;
    BitBtn15: TBitBtn;
    BitBtn25: TBitBtn;
    BitBtn26: TBitBtn;
    BitBtn27: TBitBtn;
    DBBackupButton: TButton;
    DataSource11: TDataSource;
    DateTimePicker2: TDateTimePicker;
    DateTimePicker3: TDateTimePicker;
    DBGrid1: TDBGrid;
    MemTabsEdit: TEdit;
    Panel2: TPanel;
    pplLabel: TLabel;
    ppltsksDBGrid: TDBGrid;
    ppledtDBGrid: TDBGrid;
    pplfncDBLookupComboBox: TDBLookupComboBox;
    pplnmEdit: TEdit;
    pplsnEdit: TEdit;
    RadioButton4: TRadioButton;
    RadioButton5: TRadioButton;
    RadioButton6: TRadioButton;
    SQLQuery11: TSQLQuery;
    MemTabsStringGrid: TStringGrid;
    TabControl1: TTabControl;
    TabSheet11: TTabSheet;
    TabSheet4: TTabSheet;
    ToolBar5: TToolBar;
    ToolButton2: TToolButton;
    wnwTAction: TAction;
    wnwWAction: TAction;
    wnwNAction: TAction;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    RadioButton3: TRadioButton;
    ToolButton1: TToolButton;
    tskdscedtAction: TAction;
    tskdscaddAction: TAction;
    tskdscdelAction: TAction;
    BitBtn19: TBitBtn;
    BitBtn20: TBitBtn;
    BitBtn21: TBitBtn;
    BitBtn22: TBitBtn;
    BitBtn23: TBitBtn;
    BitBtn24: TBitBtn;
    DataSource10: TDataSource;
    DataSource9: TDataSource;
    DBGrid7: TDBGrid;
    DBGrid8: TDBGrid;
    diatskDBLookupComboBox1: TDBLookupComboBox;
    Edit1: TEdit;
    diatskEdit: TEdit;
    Label1: TLabel;
    MenuItem1: TMenuItem;
    MenuItem2: TMenuItem;
    MenuItem3: TMenuItem;
    MenuItem4: TMenuItem;
    MenuItem5: TMenuItem;
    MenuItem6: TMenuItem;
    MenuItem7: TMenuItem;
    ntMenuItem: TMenuItem;
    tskdscPopupMenu: TPopupMenu;
    SQLQuery10: TSQLQuery;
    SQLQuery9: TSQLQuery;
    TabSheet10: TTabSheet;
    TabSheet9: TTabSheet;
    ToolBar7: TToolBar;
    ToolBar8: TToolBar;
    trayPopupMenu: TPopupMenu;
    s_fdiaLabel: TLabel;
    s_fdiatskaddRadioGroup: TRadioGroup;
    s_fdiatskLabel: TLabel;
    s_ftskLabel1: TLabel;
    s_fmemsrtRadioGroup: TRadioGroup;
    s_fmemActCheckBox: TCheckBox;
    diadelAction: TAction;
    diaedtAction: TAction;
    diaaddAction: TAction;
    ImageList1: TImageList;
    s_fmemLabel: TLabel;
    s_fdiatsksrtRadioGroup: TRadioGroup;
    s_fdiaaddRadioGroup: TRadioGroup;
    s_ftsksrtRadioGroup: TRadioGroup;
    TabSheet8: TTabSheet;
    TrayIcon1: TTrayIcon;
    tskdelAction: TAction;
    tskedtAction: TAction;
    tskaddAction: TAction;
    memdelAction: TAction;
    memedtAction: TAction;
    memaddAction: TAction;
    fncaddAction: TAction;
    fncedtAction: TAction;
    fncdelAction: TAction;
    ppldelAction: TAction;
    ppledtAction: TAction;
    ppladdAction: TAction;
    prjdelAction: TAction;
    prjedtAction: TAction;
    prjaddAction: TAction;
    mainActionList: TActionList;
    BitBtn1: TBitBtn;
    BitBtn10: TBitBtn;
    BitBtn11: TBitBtn;
    BitBtn12: TBitBtn;
    BitBtn16: TBitBtn;
    BitBtn17: TBitBtn;
    BitBtn18: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn7: TBitBtn;
    BitBtn8: TBitBtn;
    BitBtn9: TBitBtn;
    DataSource6: TDataSource;
    DataSource7: TDataSource;
    DataSource8: TDataSource;
    DBGrid6: TDBGrid;
    diasnDBLookupComboBox: TDBLookupComboBox;
    diatskDBLookupComboBox: TDBLookupComboBox;
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    DataSource3: TDataSource;
    DataSource4: TDataSource;
    DataSource5: TDataSource;
    DateTimePicker1: TDateTimePicker;
    prjedtDBGrid: TDBGrid;
    fncedtDBGrid: TDBGrid;
    DBGrid5: TDBGrid;
    prjedtEdit: TEdit;
    fncedtEdit: TEdit;
    diaaddMenuItem: TMenuItem;
    diaedtMenuItem: TMenuItem;
    diadelMenuItem: TMenuItem;
    nwMenuItem: TMenuItem;
    diaPopupMenu: TPopupMenu;
    ToolBar1: TToolBar;
    ToolBar2: TToolBar;
    ToolBar3: TToolBar;
    ToolBar4: TToolBar;
    ToolBar6: TToolBar;
    wrkMenuItem: TMenuItem;
    wnwPopupMenu: TPopupMenu;
    SQLQuery6: TSQLQuery;
    SQLQuery7: TSQLQuery;
    SQLQuery8: TSQLQuery;
    tskdelMenuItem: TMenuItem;
    MenuItemtsknew: TMenuItem;
    tskedtMenuItem: TMenuItem;
    PageControl1: TPageControl;
    PageControl2: TPageControl;
    Panel1: TPanel;
    tskPopupMenu: TPopupMenu;
    SQLite3Connection1: TSQLite3Connection;
    SQLQuery1: TSQLQuery;
    SQLQuery2: TSQLQuery;
    SQLQuery3: TSQLQuery;
    SQLQuery4: TSQLQuery;
    SQLQuery5: TSQLQuery;
    SQLTransaction1: TSQLTransaction;
    StringGrid1: TStringGrid;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    TabSheet5: TTabSheet;
    TabSheet6: TTabSheet;
    TabSheet7: TTabSheet;
    procedure BitBtn25Click(Sender: TObject);
    procedure BitBtn26Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure DateTimePicker2Change(Sender: TObject);
    procedure DateTimePicker3Change(Sender: TObject);
    procedure DBBackupButtonClick(Sender: TObject);
    procedure DBGrid6DblClick(Sender: TObject);
    procedure diaaddActionExecute(Sender: TObject);
    procedure diaaddMenuItemClick(Sender: TObject);
    procedure diadelActionExecute(Sender: TObject);
    procedure diadelMenuItemClick(Sender: TObject);
    procedure diaedtActionExecute(Sender: TObject);
    procedure diaedtMenuItemClick(Sender: TObject);
    procedure diatskDBLookupComboBoxChange(Sender: TObject);
    procedure diatskDBLookupComboBoxEditingDone(Sender: TObject);
    procedure diatskDBLookupComboBoxSelect(Sender: TObject);
    procedure fncaddActionExecute(Sender: TObject);
    procedure fncdelActionExecute(Sender: TObject);
    procedure fncedtActionExecute(Sender: TObject);
    procedure FormWindowStateChange(Sender: TObject);
    procedure memaddActionExecute(Sender: TObject);
    procedure memdelActionExecute(Sender: TObject);
    procedure memedtActionExecute(Sender: TObject);
    procedure MemTabsStringGridDblClick(Sender: TObject);
    procedure MenuItem1Click(Sender: TObject);
    procedure MenuItem2Click(Sender: TObject);
    procedure MenuItem5Click(Sender: TObject);
    procedure ntMenuItemClick(Sender: TObject);
    procedure ppladdActionExecute(Sender: TObject);
    procedure ppldelActionExecute(Sender: TObject);
    procedure ppledtActionExecute(Sender: TObject);
    procedure ppledtDBGridDblClick(Sender: TObject);
    procedure prjaddActionExecute(Sender: TObject);
    procedure prjdelActionExecute(Sender: TObject);
    procedure prjedtActionExecute(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState
      );
    procedure DBGrid5DblClick(Sender: TObject);
    procedure DBGrid8DblClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormResize(Sender: TObject);
    procedure MenuItemtsknewClick(Sender: TObject);
    procedure nwMenuItemClick(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid1PrepareCanvas(sender: TObject; DataCol: Integer;
      Column: TColumn; AState: TGridDrawState);
    procedure RadioButton1Change(Sender: TObject);
    procedure RadioButton1Click(Sender: TObject);
    procedure RadioButton2Change(Sender: TObject);
    procedure RadioButton2Click(Sender: TObject);
    procedure RadioButton3Change(Sender: TObject);
    procedure RadioButton3Click(Sender: TObject);
    procedure RadioButton4Click(Sender: TObject);
    procedure RadioButton5Click(Sender: TObject);
    procedure RadioButton6Click(Sender: TObject);
    procedure SQLite3Connection1AfterConnect(Sender: TObject);
    procedure StringGrid1PrepareCanvas(sender: TObject; aCol, aRow: Integer;
      aState: TGridDrawState);
    procedure s_fdiaaddRadioGroupSelectionChanged(Sender: TObject);
    procedure s_fdiatskaddRadioGroupSelectionChanged(Sender: TObject);
    procedure s_fdiatsksrtRadioGroupSelectionChanged(Sender: TObject);
    procedure s_fmemActCheckBoxChange(Sender: TObject);
    procedure s_fmemsrtRadioGroupSelectionChanged(Sender: TObject);
    procedure s_ftsksrtRadioGroupSelectionChanged(Sender: TObject);
    procedure TabControl1Change(Sender: TObject);
    procedure TabControl1Changing(Sender: TObject; var AllowChange: Boolean);
    procedure ToolBar3Click(Sender: TObject);
    procedure TrayIcon1DblClick(Sender: TObject);
    procedure tskaddActionExecute(Sender: TObject);
    procedure tskdelActionExecute(Sender: TObject);
    procedure tskdelMenuItemClick(Sender: TObject);
    procedure tskdscaddActionExecute(Sender: TObject);
    procedure tskdscdelActionExecute(Sender: TObject);
    procedure tskdscedtActionExecute(Sender: TObject);
    procedure tskedtActionExecute(Sender: TObject);
    procedure tskedtMenuItemClick(Sender: TObject);
    procedure wnwNActionExecute(Sender: TObject);
    procedure wnwTActionExecute(Sender: TObject);
    procedure wnwWActionExecute(Sender: TObject);
    procedure wrkMenuItemClick(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

  Actn = (DEL, NEW, EDT);

  procedure GridFormating();
  procedure Grid6Formating();
  procedure Grid8Formating();

var
  mems: array of longint;
  mems_len: integer;
  mems_ind: integer;
  Form1: TForm1;
  NewMemRec: Boolean;
  MemWait: Boolean;
  CurMemKey: LongInt;
  CurTskKey: LongInt;
  CurTskDscKey: LongInt;
  tskAct: Actn;
  SelectQ8String: String;
  sf_r1, sf_r2, sf_dt1, sf_dt2, sf_dl1, sf_tl1: integer;
  diatskDBLCBEdited: Boolean;
  pplKey: Integer;
  MemTabsStringCount: Integer;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.FormActivate(Sender: TObject);
begin
  SQlite3Connection1.DatabaseName:=ExtractFilePath(Application.ExeName) + 'softinka.db3';
  SQlite3Connection1.Connected:=True;
  SQLQuery5.Close;
  SQLQuery5.SQL.Clear;
  SQLQuery5.SQL.Add('select * from task;');
  SQLQuery5.Open;
  SQLQuery1.Close;
  SQLQuery1.SQL.Clear;
  SQLQuery1.SQL.Add('select * from mem;');
  SQLQuery1.Open;
  SQLQuery8.Close;
  SQLQuery8.SQL.Clear;
  SQLQuery8.SQL.Add(SelectQ8String);
  SQLQuery8.Open;
  SQLQuery10.Close;
  SQLQuery10.SQL.Clear;
  SQLQuery10.SQL.Add('select key, breef, text from task_desc;');
  SQLQuery10.Open;

  SQLQuery4.Active := True;
  SQLQuery2.Active := True;
  SQLQuery3.Active := True;
  SQLQuery6.Active := True;
  SQLQuery7.Active := True;
  SQLQuery8.Active := True;
//  DBGrid1.DefaultDrawing := False;

  GridFormating();

  ppledtDBGrid.Columns[0].Width := Round(ppledtDBGrid.ClientWidth/3);
  ppledtDBGrid.Columns[1].Width := Round(ppledtDBGrid.ClientWidth/3);
  ppledtDBGrid.Columns[2].Width := ppledtDBGrid.ClientWidth - ppledtDBGrid.Columns[0].Width - ppledtDBGrid.Columns[1].Width;
  ppledtDBGrid.Columns[3].Visible := False;
  prjedtDBGrid.Columns[0].Width := prjedtDBGrid.ClientWidth;
  fncedtDBGrid.Columns[0].Width := fncedtDBGrid.ClientWidth;

  DateTimePicker1.Date := Now;

  BitBtn1.Caption := '';
  BitBtn2.Caption := '';
  BitBtn3.Caption := '';

  BitBtn4.Caption := '';
  BitBtn5.Caption := '';
  BitBtn6.Caption := '';

  BitBtn7.Caption := '';
  BitBtn8.Caption := '';
  BitBtn9.Caption := '';

  BitBtn10.Caption := '';
  BitBtn11.Caption := '';
  BitBtn12.Caption := '';

  BitBtn13.Caption := '';
  BitBtn14.Caption := '';
  BitBtn15.Caption := '';

  BitBtn16.Caption := '';
  BitBtn17.Caption := '';
  BitBtn18.Caption := '';

  BitBtn22.Caption := '';
  BitBtn23.Caption := '';
  BitBtn24.Caption := '';

  diatskEdit.Visible := False;
  diatskDBLookupComboBox.Visible := True;

  RadioButton4.Checked := True;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  MemTabsStringCount := 0;

  SQliteLibraryName := ExtractFilePath(Application.ExeName) + 'sqlite3.dll';

  SelectQ8String := 'select diary_record.cur_date, diary_record.hours, people.surname, task_desc.breef as wrk, diary_record."key" as dkey, diary_record.people_key, diary_record.task_desc_key, diary_record.nowork_key '
  + 'from diary_record, people, task_desc '
  + 'where people."key"=diary_record.people_key '
  + 'and task_desc."key"=diary_record.task_desc_key '
  + 'union all '
  + 'select diary_record.cur_date, diary_record.hours, people.surname, nowork.reason as nwk, diary_record."key" as dkey, diary_record.people_key, diary_record.task_desc_key, diary_record.nowork_key '
  + 'from diary_record, people, nowork '
  + 'where people."key"=diary_record.people_key '
  + 'and nowork."key"=diary_record.nowork_key '
//  + 'order by people.surname;';
  + 'order by diary_record.cur_date desc, people.surname asc;';

  MemWait := False;
end;

procedure TForm1.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState
  );
begin
  if (Key = VK_INSERT)
  then begin
    memaddActionExecute(Sender);
  end;
end;

procedure TForm1.FormResize(Sender: TObject);
begin
  if Dbgrid1.Columns.Enabled then
    GridFormating();
end;

procedure TForm1.MenuItemtsknewClick(Sender: TObject);
begin
  tskAct := NEW;
  TaskEditForm.Show;
end;

procedure TForm1.DBGrid1DblClick(Sender: TObject);
begin
  memedtActionExecute(Sender);
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TForm1.BitBtn26Click(Sender: TObject);
begin
  MemTabsStringGrid.RowCount := MemTabsStringCount + 1;
  MemTabsStringGrid.Cells[0,MemTabsStringCount] := MemTabsEdit.Text;
  MemTabsStringCount := MemTabsStringCount + 1;
end;

procedure TForm1.BitBtn25Click(Sender: TObject);
begin
  MemTabsStringGrid.Cells[MemTabsStringGrid.Col, MemTabsStringGrid.Row] := MemTabsEdit.Text;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  memdelActionExecute(Sender);
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  memedtActionExecute(Sender);
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
  memaddActionExecute(Sender);
end;

procedure TForm1.DateTimePicker2Change(Sender: TObject);
var
  SqlString: String;
  TotalHours:  Integer;
begin
  SqlString := 'select sum(hours) as total from diary_record where ' +
  'people_key = ' + IntToStr(pplKey) +
  ' and ' +
  'cur_date >= ''' + FormatDateTime('YYYY-MM-DD', DateTimePicker2.Date) +
  ''' and ' +
  'cur_date <= ''' + FormatDateTime('YYYY-MM-DD', DateTimePicker3.Date) +
  ''';';
  SQLQuery11.Close;
  SQLQuery11.SQL.Clear;
  SQLQuery11.SQL.Add(SqlString);
  SQLQuery11.Open;
  TotalHours := SQLQuery11.FieldByName('total').AsInteger;
//  TotalHours := StrToInt(SQLQuery11.FieldByName('total').AsString);

  SqlString := 'select task_desc.breef as task, sum(diary_record.hours) as hours, ' +
                'round(sum(diary_record.hours) * 100.0 / ' + IntToStr(TotalHours) + ', 2) as percent ' +
               'from diary_record, task_desc ' +
               'where ' +
               'task_desc."key" = diary_record.task_desc_key' +
               ' and ' +
               'diary_record.people_key = ' + IntToStr(pplKey) +
               ' and ' +
               'cur_date >= ''' + FormatDateTime('YYYY-MM-DD', DateTimePicker2.Date) +
               ''' and ' +
               'cur_date <= ''' + FormatDateTime('YYYY-MM-DD', DateTimePicker3.Date) +
               ''' group by task;';
  SQLQuery11.Close;
  SQLQuery11.SQL.Clear;
  SQLQuery11.SQL.Add(SqlString);
  SQLQuery11.Open;
  SQLQuery11.Last;
  SQLQuery11.First;
  ppltsksDBGrid.Columns[1].Width := Round(ppltsksDBGrid.ClientWidth*0.1);
  ppltsksDBGrid.Columns[2].Width := Round(ppltsksDBGrid.ClientWidth*0.1);
  ppltsksDBGrid.Columns[0].Width := ppltsksDBGrid.ClientWidth - ppltsksDBGrid.Columns[1].Width - ppltsksDBGrid.Columns[2].Width;
end;

procedure TForm1.DateTimePicker3Change(Sender: TObject);
begin
  DateTimePicker2Change(Sender);
end;

procedure TForm1.DBBackupButtonClick(Sender: TObject);
var
  tmpDBName: String;
  oldDBName: String;
  newDBName: String;
begin
  tmpDBName := ExtractFilePath(Application.ExeName) + 'softinka';
  oldDBName := tmpDBName + '.db3';
  newDBName := tmpDBName + FormatDateTime('_YYYYMMDD_hhmm', Now) + '.db3';
  SQlite3Connection1.Connected:=False;
  CopyFile(oldDBName, newDBName);
//  Application.Terminate;
//  SQlite3Connection1.Connected:=True;
  FormActivate(Sender);
end;

procedure TForm1.DBGrid6DblClick(Sender: TObject);
var
  FS: TFormatSettings;
begin
  FS:=DefaultFormatSettings;
  FS.DateSeparator:='-';
  FS.ShortDateFormat:='yyyy-mm-dd';

  if(DbGrid6.SelectedIndex = 0) then begin
    DateTimePicker1.Date :=  StrToDate(DbGrid6.DataSource.DataSet.FieldByName('diary_record.cur_date').AsString, FS);
  end;
  Edit1.Text := DbGrid6.DataSource.DataSet.FieldByName('diary_record.hours').AsString;
  diasnDBLookupComboBox.KeyValue := DbGrid6.DataSource.DataSet.FieldByName('diary_record.people_key').AsString;
  if(DbGrid6.DataSource.DataSet.FieldByName('diary_record.task_desc_key').IsNull) then begin
    nwMenuItemClick(Sender);
    diatskDBLookupComboBox.KeyValue := DbGrid6.DataSource.DataSet.FieldByName('diary_record.nowork_key').AsString;
  end else begin
    wrkMenuItemClick(Sender);
    diatskDBLookupComboBox.KeyValue := DbGrid6.DataSource.DataSet.FieldByName('diary_record.task_desc_key').AsString;
  end;
end;

procedure TForm1.diaaddActionExecute(Sender: TObject);
var
  taskkey: Integer;
  CurKey: Integer;
begin
  CurKey := DBGrid6.DataSource.DataSet.FieldByName('dkey').AsInteger;
  if(diatskEdit.Visible) then
//  if(diatskDBLCBEdited) then
    begin
      SQLQuery7.Close;
      SQLQuery7.SQL.Clear;
//      SQLQuery7.SQL.Add('select * from task_desc where text = ''' + diatskDBLookupComboBox.Caption + ''';');
      SQLQuery7.SQL.Add('select * from task_desc where text = ''' + diatskEdit.Text + ''';');
      SQLQuery7.Open;
      if SQLQuery7.IsEmpty then
        begin
          SQLQuery7.Close;
          SQLQuery7.SQL.Clear;
          SQLQuery7.SQL.Add('insert into task_desc (breef, text) values (''' + diatskEdit.Text + ''', ''' + diatskEdit.Text + ''');');
          SQLQuery7.ExecSQL;
          SQLite3Connection1.Transaction.Commit;
          SQLQuery7.Close;
          SQLQuery7.SQL.Clear;
          SQLQuery7.SQL.Add('select * from task_desc;');
          SQLQuery7.Open;
          SQLQuery7.Last;
          taskkey := SQLQuery7.FieldByName('key').AsInteger;
        end
      else
        begin
          taskkey := SQLQuery7.FieldByName('key').AsInteger;
        end;
    end else
    begin
      taskkey := diatskDBLookupComboBox.KeyValue;
    end;


  Form1.SQLQuery8.Close;
  Form1.SQLQuery8.SQL.Clear;

  if(RadioButton2.Checked) then
//  if(diatskDBLookupComboBox.ListField = 'reason') then
    begin
      Form1.SQLQuery8.SQL.Add('insert into diary_record (hours, people_key, cur_date, nowork_key) values ('
      + Edit1.Text + ', '
      + IntToStr(diasnDBLookupComboBox.KeyValue) + ', '''
      + FormatDateTime('YYYY-MM-DD', DateTimePicker1.Date) + ''', '
      + IntToStr(taskkey) + ');');
    end else begin
      Form1.SQLQuery8.SQL.Add('insert into diary_record (hours, people_key, task_desc_key, cur_date) values ('
      + Edit1.Text + ', '
      + IntToStr(diasnDBLookupComboBox.KeyValue) + ', '
      + IntToStr(taskkey) + ', '''
      + FormatDateTime('YYYY-MM-DD', DateTimePicker1.Date) + ''');');
    end;
  Label1.Caption := SQLQuery8.SQL.Strings[0];
  Form1.SQLQuery8.ExecSQL;
  Form1.SQLite3Connection1.Transaction.Commit;
  Form1.SQLQuery8.Close;
  Form1.SQLQuery8.SQL.Clear;
  Form1.SQLQuery8.SQL.Add(SelectQ8String);
  Form1.SQLQuery8.Open;

  SQLQuery1.Active := True;
  SQLQuery5.Active := True;
  SQLQuery10.Active := True;

  Grid6Formating();
  Grid8Formating();
  wrkMenuItemClick(Sender);
  Form1.DBGrid6.DataSource.DataSet.Locate('dkey', CurKey, []);
end;

procedure TForm1.diaaddMenuItemClick(Sender: TObject);
begin
  diaaddActionExecute(Sender);
end;

procedure TForm1.diadelActionExecute(Sender: TObject);
var
  TempKey: Integer;
  CurKey: Integer;
begin
  TempKey := Form1.DBGrid6.DataSource.DataSet.FieldByName('dkey').AsInteger;
  DBGrid6.DataSource.DataSet.Prior;
  CurKey := DBGrid6.DataSource.DataSet.FieldByName('dkey').AsInteger;
  Form1.SQLQuery8.Close;
  Form1.SQLQuery8.SQL.Clear;
  Form1.SQLQuery8.SQL.Add('delete from diary_record'
  + ' where key = ' + IntToStr(TempKey)
  + ';');
  Form1.SQLQuery8.ExecSQL;
  Form1.SQLite3Connection1.Transaction.Commit;
  Form1.SQLQuery8.Close;
  Form1.SQLQuery8.SQL.Clear;
  Form1.SQLQuery8.SQL.Add(SelectQ8String);
  Form1.SQLQuery8.Open;

  Grid6Formating();
  Grid6Formating();
  wrkMenuItemClick(Sender);
  Form1.DBGrid6.DataSource.DataSet.Locate('dkey', CurKey, []);
end;

procedure TForm1.diadelMenuItemClick(Sender: TObject);
begin
  diadelActionExecute(Sender);
end;

procedure TForm1.diaedtActionExecute(Sender: TObject);
var
  TempKey: Integer;
  taskkey: Integer;
  CurKey: Integer;
begin
  CurKey := DBGrid6.DataSource.DataSet.FieldByName('dkey').AsInteger;
  TempKey := Form1.DBGrid6.DataSource.DataSet.FieldByName('dkey').AsInteger;
  if(diatskEdit.Visible) then
    begin
      SQLQuery7.Close;
      SQLQuery7.SQL.Clear;
      SQLQuery7.SQL.Add('select * from task_desc where text = ''' + diatskEdit.Text + ''';');
      SQLQuery7.Open;
      if SQLQuery7.IsEmpty then
        begin
          SQLQuery7.Close;
          SQLQuery7.SQL.Clear;
          SQLQuery7.SQL.Add('insert into task_desc (breef, text) values (''' + diatskEdit.Text + ''', ''' + diatskEdit.Text + ''');');
          SQLQuery7.ExecSQL;
          SQLite3Connection1.Transaction.Commit;
          SQLQuery7.Close;
          SQLQuery7.SQL.Clear;
          SQLQuery7.SQL.Add('select * from task_desc;');
          SQLQuery7.Open;
          SQLQuery7.Last;
          taskkey := SQLQuery7.FieldByName('key').AsInteger;
        end
      else
        begin
          taskkey := SQLQuery7.FieldByName('key').AsInteger;
        end;
    end else
    begin
      taskkey := diatskDBLookupComboBox.KeyValue;
    end;


  Form1.SQLQuery8.Close;
  Form1.SQLQuery8.SQL.Clear;
  if(RadioButton2.Checked) then
//  if(diatskDBLookupComboBox.ListField = 'reason') then
    begin
      Form1.SQLQuery8.SQL.Add('update diary_record set '
      + 'hours = ' + Edit1.Text
      + ', people_key = ' + IntToStr(diasnDBLookupComboBox.KeyValue)
//      + ', cur_date = ' + FormatDateTime('YYYY-MM-DD', DateTimePicker1.Date)
//      + ', cur_date = ' + FormatDateTime('DD-MM-YYYY', DateTimePicker1.Date)
      + ', cur_date = ''' + FormatDateTime('YYYY-MM-DD', DateTimePicker1.Date)
      + ''', nowork_key = ' + IntToStr(taskkey)
      + ', task_key = ' + 'null'
      + ' where key = ' + IntToStr(TempKey)
      + ';');
    end else begin
      Form1.SQLQuery8.SQL.Add('update diary_record set '
      + 'hours = ' + Edit1.Text
      + ', people_key = ' + IntToStr(diasnDBLookupComboBox.KeyValue)
//      + ', cur_date = ' + FormatDateTime('YYYY-MM-DD', DateTimePicker1.Date)
//      + ', cur_date = ' + FormatDateTime('DD-MM-YYYY', DateTimePicker1.Date)
      + ', cur_date = ''' + FormatDateTime('YYYY-MM-DD', DateTimePicker1.Date)
      + ''', nowork_key = ' + 'null'
      + ', task_desc_key = ' + IntToStr(taskkey)
      + ' where key = ' + IntToStr(TempKey)
      + ';');
    end;
  Form1.SQLQuery8.ExecSQL;
  Form1.SQLite3Connection1.Transaction.Commit;
  Form1.SQLQuery8.Close;
  Form1.SQLQuery8.SQL.Clear;
  Form1.SQLQuery8.SQL.Add(SelectQ8String);
  Form1.SQLQuery8.Open;

  SQLQuery1.Active := True;
  SQLQuery5.Active := True;
  SQLQuery10.Active := True;

  Grid6Formating();
  Grid8Formating();
  wrkMenuItemClick(Sender);
  Form1.DBGrid6.DataSource.DataSet.Locate('dkey', CurKey, []);
end;

procedure TForm1.diaedtMenuItemClick(Sender: TObject);
begin
  diaedtActionExecute(Sender);
end;

procedure TForm1.diatskDBLookupComboBoxChange(Sender: TObject);
begin
  diatskDBLCBEdited := True;
  BitBtn7.Enabled := False;
  BitBtn8.Enabled := False;
  BitBtn9.Enabled := False;
end;

procedure TForm1.diatskDBLookupComboBoxEditingDone(Sender: TObject);
begin
end;

procedure TForm1.diatskDBLookupComboBoxSelect(Sender: TObject);
begin
  diatskDBLCBEdited := False;
  BitBtn7.Enabled := True;
  BitBtn8.Enabled := True;
  BitBtn9.Enabled := True;
end;

procedure TForm1.fncaddActionExecute(Sender: TObject);
begin
  Form1.SQLQuery3.Close;
  Form1.SQLQuery3.SQL.Clear;
  Form1.SQLQuery3.SQL.Add('insert into function (function) values (''' + Form1.fncedtEdit.Text + ''';');
  Form1.SQLQuery3.ExecSQL;
  Form1.SQLite3Connection1.Transaction.Commit;
  Form1.SQLQuery3.Close;
  Form1.SQLQuery3.SQL.Clear;
  Form1.SQLQuery3.SQL.Add('select function from function;');
  Form1.SQLQuery3.Open;
end;

procedure TForm1.fncdelActionExecute(Sender: TObject);
begin
  Form1.SQLQuery3.Close;
  Form1.SQLQuery3.SQL.Clear;
  Form1.SQLQuery3.SQL.Add('delete from function where function='+Form1.prjedtDBGrid.DataSource.DataSet.FieldByName('function').AsString+';');
  Form1.SQLQuery3.ExecSQL;
  Form1.SQLite3Connection1.Transaction.Commit;
  Form1.SQLQuery3.Close;
  Form1.SQLQuery3.SQL.Clear;
  Form1.SQLQuery3.SQL.Add('select function from function;');
  Form1.SQLQuery3.Open;
end;

procedure TForm1.fncedtActionExecute(Sender: TObject);
begin
  Form1.SQLQuery3.Close;
  Form1.SQLQuery3.SQL.Clear;
  Form1.SQLQuery3.SQL.Add('update function set function=''' + Form1.fncedtEdit.Text + ''';');
  Form1.SQLQuery3.ExecSQL;
  Form1.SQLTransaction1.Commit;
  Form1.SQLQuery3.Close;
  Form1.SQLQuery3.SQL.Clear;
  Form1.SQLQuery3.SQL.Add('select function from function;');
  Form1.SQLQuery3.Open;
end;

procedure TForm1.FormWindowStateChange(Sender: TObject);
begin
  if Form1.WindowState = wsminimized then begin
     Form1.Hide;
//     TrayIcon1.Visible:=true;
  end;
end;

procedure TForm1.memaddActionExecute(Sender: TObject);
begin
  NewMemRec := True;
// SQLite3Connection1.Connected := False;
  Form2.OnActivate(Sender);
  Form2.Show;
end;

procedure TForm1.memdelActionExecute(Sender: TObject);
var
  MemIndex: integer;
  MemIndexStr: string;
  GridIdx: integer;
begin
//  GridIdx := Form1.DBGrid1.SelectedIndex;
  MemIndex := Form1.DBGrid1.DataSource.DataSet.FieldByName('key').AsInteger;
  MemIndexStr := IntToStr(MemIndex);
  Form1.SQLQuery1.Close;
  Form1.SQLQuery1.SQL.Clear;
  Form1.SQLQuery1.SQL.Add('delete from mem where key='+MemIndexStr+';');
//  Form1.SQLQuery1.ExecSQL;
  Form1.SQLTransaction1.Active := False;

  Form1.SQLTransaction1.Active := False;
  Form1.SQLTransaction1.StartTransaction;
  Form1.SQLQuery1.ExecSQL;
  Form1.SQLTransaction1.Commit;
  Form1.SQLTransaction1.Active := False;

  Form1.SQLQuery1.Close;
  Form1.SQLQuery1.SQL.Clear;
  Form1.SQLQuery1.SQL.Add('select * from mem;');
  Form1.SQLQuery1.Open;
  GridFormating();
//  Form1.DBGrid1.SelectedIndex := GridIdx + 1;
end;

procedure TForm1.memedtActionExecute(Sender: TObject);
begin
  NewMemRec := False;
  CurMemKey := DBGrid1.DataSource.DataSet.FieldByName('key').AsInteger;
// SQLite3Connection1.Connected := False;
//  Form2.OnActivate(Sender);
  Form2.Show;
end;

procedure TForm1.MemTabsStringGridDblClick(Sender: TObject);
begin

end;

procedure TForm1.MenuItem1Click(Sender: TObject);
begin
  Form1.WindowState:=wsNormal;
  Form1.Show;
  Form1.SetFocus;
  PageControl1.PageIndex := 0;
  PageControl2.PageIndex := 0;
//  TrayIcon1.Visible:=false;
end;

procedure TForm1.MenuItem2Click(Sender: TObject);
begin
  Form1.WindowState:=wsNormal;
  Form1.Show;
  Form1.SetFocus;
  PageControl1.PageIndex := 3;
  PageControl2.PageIndex := 0;
//  TrayIcon1.Visible:=false;
end;

procedure TForm1.MenuItem5Click(Sender: TObject);
begin

end;

procedure TForm1.ntMenuItemClick(Sender: TObject);
begin
  wnwTActionExecute(Sender);
end;

procedure TForm1.ppladdActionExecute(Sender: TObject);
var
  TmpStr: String;
begin
  if(Form1.pplfncDBLookupComboBox.KeyValue = null)
  then begin
    TmpStr := 'null';
  end else begin
    TmpStr := IntToStr(Form1.pplfncDBLookupComboBox.KeyValue);
  end;
  Form1.SQLQuery3.Close;
  Form1.SQLQuery3.SQL.Clear;
  Form1.SQLQuery3.SQL.Add('insert into people (name, surname, func_key) values ('''
  + Form1.pplnmEdit.Text + ''', '''
  + Form1.pplsnEdit.Text + ''', '
  + TmpStr + ';');
  Form1.SQLQuery3.ExecSQL;
  Form1.SQLite3Connection1.Transaction.Commit;
  Form1.SQLQuery3.Close;
  Form1.SQLQuery3.SQL.Clear;
  Form1.SQLQuery3.SQL.Add('select people.name, people.surname, function.function from people, function where people.func_key=function.key;');
  Form1.SQLQuery3.Open;
end;

procedure TForm1.ppldelActionExecute(Sender: TObject);
begin
  Form1.SQLQuery3.Close;
  Form1.SQLQuery3.SQL.Clear;
  Form1.SQLQuery3.SQL.Add('delete from people where'
  + ' name='+Form1.ppledtDBGrid.DataSource.DataSet.FieldByName('name').AsString
  + ' and surname='+Form1.ppledtDBGrid.DataSource.DataSet.FieldByName('surname').AsString
  +';');
  Form1.SQLQuery3.ExecSQL;
  Form1.SQLite3Connection1.Transaction.Commit;
  Form1.SQLQuery3.Close;
  Form1.SQLQuery3.SQL.Clear;
  Form1.SQLQuery3.SQL.Add('select people.name, people.surname, function.function from people, function where people.func_key=function.key;');
  Form1.SQLQuery3.Open;
end;

procedure TForm1.ppledtActionExecute(Sender: TObject);
var
  TmpStr: String;
begin
  if(Form1.pplfncDBLookupComboBox.KeyValue = null)
  then begin
    TmpStr := 'null';
  end else begin
    TmpStr := IntToStr(Form1.pplfncDBLookupComboBox.KeyValue);
  end;
  Form1.SQLQuery3.Close;
  Form1.SQLQuery3.SQL.Clear;
  Form1.SQLQuery3.SQL.Add('update people set '
  + ' name=''' + Form1.pplnmEdit.Text
  + ', surname=''' + Form1.pplsnEdit.Text
  + ', func_key=''' + TmpStr
  + ';');
  Form1.SQLQuery3.ExecSQL;
  Form1.SQLTransaction1.Commit;
  Form1.SQLQuery3.Close;
  Form1.SQLQuery3.SQL.Clear;
  Form1.SQLQuery3.SQL.Add('select people.name, people.surname, function.function from people, function where people.func_key=function.key;');
  Form1.SQLQuery3.Open;
end;

procedure TForm1.ppledtDBGridDblClick(Sender: TObject);
var
  SqlString: String;
  TotalHours:  Integer;
begin
  pplKey := ppledtDBGrid.DataSource.DataSet.FieldByName('pkey').AsInteger;
  pplLabel.Caption := ppledtDBGrid.DataSource.DataSet.FieldByName('surname').AsString;
  pplnmEdit.Caption := ppledtDBGrid.DataSource.DataSet.FieldByName('name').AsString;
  pplsnEdit.Caption := ppledtDBGrid.DataSource.DataSet.FieldByName('surname').AsString;
  pplfncDBLookupComboBox.KeyValue := ppledtDBGrid.DataSource.DataSet.FieldByName('func_key').AsInteger;
  SqlString := 'select sum(hours) as total from diary_record where people_key = ' + IntToStr(pplKey) + ';';
  SQLQuery11.Close;
  SQLQuery11.SQL.Clear;
  SQLQuery11.SQL.Add(SqlString);
  SQLQuery11.Open;
  TotalHours := SQLQuery11.FieldByName('total').AsInteger;

  SqlString := 'select cur_date from diary_record where people_key = ' + IntToStr(pplKey) + ' order by cur_date;';
  SQLQuery11.Close;
  SQLQuery11.SQL.Clear;
  SQLQuery11.SQL.Add(SqlString);
  SQLQuery11.Open;
  SQLQuery11.First;
  DateTimePicker2.Date := SQLQuery11.FieldByName('cur_date').AsDateTime;

  SqlString := 'select cur_date from diary_record where people_key = ' + IntToStr(pplKey) + ' order by cur_date;';
  SQLQuery11.Close;
  SQLQuery11.SQL.Clear;
  SQLQuery11.SQL.Add(SqlString);
  SQLQuery11.Open;
  SQLQuery11.Last;
  DateTimePicker3.Date := SQLQuery11.FieldByName('cur_date').AsDateTime;

  SqlString := 'select task_desc.breef as task, sum(diary_record.hours) as hours, ' +
                'round(sum(diary_record.hours) * 100.0 / ' + IntToStr(TotalHours) + ', 2) as percent ' +
               'from diary_record, task_desc ' +
               'where ' +
               'task_desc."key" = diary_record.task_desc_key' +
               ' and ' +
               'diary_record.people_key = ' + IntToStr(pplKey) +
               ' group by task;';
  SQLQuery11.Close;
  SQLQuery11.SQL.Clear;
  SQLQuery11.SQL.Add(SqlString);
  SQLQuery11.Open;
  SQLQuery11.Last;
  SQLQuery11.First;
  ppltsksDBGrid.Columns[1].Width := Round(ppltsksDBGrid.ClientWidth*0.1);
  ppltsksDBGrid.Columns[2].Width := Round(ppltsksDBGrid.ClientWidth*0.1);
  ppltsksDBGrid.Columns[0].Width := ppltsksDBGrid.ClientWidth - ppltsksDBGrid.Columns[1].Width - ppltsksDBGrid.Columns[2].Width;
end;

procedure TForm1.prjaddActionExecute(Sender: TObject);
begin
  Form1.SQLQuery4.Close;
  Form1.SQLQuery4.SQL.Clear;
  Form1.SQLQuery4.SQL.Add('insert into theme (theme) values (''' + Form1.prjedtEdit.Text + ''';');
  Form1.SQLQuery3.ExecSQL;
  Form1.SQLite3Connection1.Transaction.Commit;
  Form1.SQLQuery4.Close;
  Form1.SQLQuery4.SQL.Clear;
  Form1.SQLQuery4.SQL.Add('select theme from theme;');
  Form1.SQLQuery4.Open;
end;

procedure TForm1.prjdelActionExecute(Sender: TObject);
begin
  Form1.SQLQuery4.Close;
  Form1.SQLQuery4.SQL.Clear;
  Form1.SQLQuery4.SQL.Add('delete from theme where theme='+Form1.prjedtDBGrid.DataSource.DataSet.FieldByName('theme').AsString+';');
  Form1.SQLQuery4.ExecSQL;
  Form1.SQLite3Connection1.Transaction.Commit;
  Form1.SQLQuery4.Close;
  Form1.SQLQuery4.SQL.Clear;
  Form1.SQLQuery4.SQL.Add('select theme from theme;');
  Form1.SQLQuery4.Open;
end;

procedure TForm1.prjedtActionExecute(Sender: TObject);
begin
  Form1.SQLQuery4.Close;
  Form1.SQLQuery4.SQL.Clear;
  Form1.SQLQuery4.SQL.Add('update theme set theme=''' + Form1.prjedtEdit.Text + ''';');
  Form1.SQLQuery4.ExecSQL;
  Form1.SQLTransaction1.Commit;
  Form1.SQLQuery4.Close;
  Form1.SQLQuery4.SQL.Clear;
  Form1.SQLQuery4.SQL.Add('select theme from theme;');
  Form1.SQLQuery4.Open;
end;

procedure TForm1.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = VK_RETURN)
//  if (Key = word(13))
  then begin
    memedtActionExecute(Sender);
  end;
  if (Key = VK_INSERT)
//  if (Key = word(45))
  then begin
    memaddActionExecute(Sender);
  end;
  if (Key = VK_DELETE)
//  if (Key = word(46))
  then begin
    memdelActionExecute(Sender);
  end;
end;

procedure TForm1.DBGrid5DblClick(Sender: TObject);
var
  TempKey: Integer;
begin
  TempKey := Form1.DBGrid5.DataSource.DataSet.FieldByName('key').AsInteger;
  CurTskKey := TempKey;
  tskAct := EDT;
  TaskEditForm.Show;
end;

procedure TForm1.DBGrid8DblClick(Sender: TObject);
var
  TempKey: Integer;
begin
  TempKey := Form1.DBGrid8.DataSource.DataSet.FieldByName('key').AsInteger;
  CurTskDscKey := TempKey;
  tskAct := EDT;
  TaskDescEditForm.Show;
end;

procedure Grid6Formating();
begin
  Form1.DBGrid6.Columns[0].Width := 80;
  Form1.DBGrid6.Columns[1].Width := 25;
  Form1.DBGrid6.Columns[2].Width := 100;
  Form1.DBGrid6.Columns[3].Width := Form1.DBGrid6.ClientWidth
  - Form1.DBGrid6.Columns[0].Width
  - Form1.DBGrid6.Columns[1].Width
  - Form1.DBGrid6.Columns[2].Width
  - 12;
  Form1.DBGrid6.DataSource.DataSet.Last;
  Form1.DBGrid6.DataSource.DataSet.First;
end;

procedure Grid8Formating();
begin
  Form1.DBGrid8.Columns[2].Visible := False;
  Form1.DBGrid8.Columns[0].Width := 50;
  Form1.DBGrid8.Columns[1].Width := Form1.DBGrid8.ClientWidth
  - Form1.DBGrid8.Columns[0].Width
  - 12;
  Form1.DBGrid8.DataSource.DataSet.Last;
  Form1.DBGrid8.DataSource.DataSet.First;
  Form1.DBGrid8.DataSource.DataSet.Locate('key', CurTskDscKey, []);
end;

procedure GridFormating();
begin
  Form1.DBGrid1.Columns[0].Width := 30;
  Form1.DBGrid1.Columns[1].Width := 70;
  Form1.DBGrid1.Columns[3].Width := 80;
  Form1.DBGrid1.Columns[4].Width := 80;
  Form1.DBGrid1.Columns[5].Width := 80;
  Form1.DBGrid1.Columns[6].Width := 80;
  Form1.DBGrid1.Columns[7].Width := 80;
  Form1.DBGrid1.Columns[7].Visible := False;
  Form1.DBGrid1.Columns[8].Width := 40;
  Form1.DBGrid1.Columns[2].Width := Form1.DBGrid1.ClientWidth - Form1.DBGrid1.Columns[0].Width -
  Form1.DBGrid1.Columns[1].Width - Form1.DBGrid1.Columns[3].Width - Form1.DBGrid1.Columns[4].Width -
  Form1.DBGrid1.Columns[5].Width - Form1.DBGrid1.Columns[6].Width - Form1.DBGrid1.Columns[7].Width -
  Form1.DBGrid1.Columns[8].Width - 12;

  Form1.DBGrid5.Columns[0].Width := 30;
  Form1.DBGrid5.Columns[1].Width := 70;
  Form1.DBGrid5.Columns[3].Width := 80;
  Form1.DBGrid5.Columns[4].Width := 80;
  Form1.DBGrid5.Columns[4].Visible := False;
  Form1.DBGrid5.Columns[5].Width := 80;
  Form1.DBGrid5.Columns[5].Visible := False;
  Form1.DBGrid5.Columns[6].Width := 40;
  Form1.DBGrid5.Columns[2].Width := Form1.DBGrid5.ClientWidth - Form1.DBGrid5.Columns[0].Width -
  Form1.DBGrid5.Columns[1].Width - Form1.DBGrid5.Columns[3].Width - Form1.DBGrid5.Columns[4].Width -
  Form1.DBGrid5.Columns[5].Width - Form1.DBGrid5.Columns[6].Width - 12;

  Grid6Formating();
  Grid8Formating();
end;

procedure TForm1.DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
// if DBGrid1.DataSource.DataSet.FieldByName('done').AsBoolean = True
// then
// DBGrid1.Canvas.Font.Color:=clRed;
// DBGrid1.Canvas.Brush.Color:=clGreen;
// DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure TForm1.DBGrid1PrepareCanvas(sender: TObject; DataCol: Integer;
  Column: TColumn; AState: TGridDrawState);
begin
  if DBGrid1.DataSource.DataSet.FieldByName('done').AsBoolean = True
    then
    DBGrid1.Canvas.Brush.Color := $77FF77;
end;

procedure TForm1.RadioButton1Change(Sender: TObject);
begin

end;

procedure TForm1.RadioButton1Click(Sender: TObject);
begin
  wnwWActionExecute(Sender);
end;

procedure TForm1.RadioButton2Change(Sender: TObject);
begin
end;

procedure TForm1.RadioButton2Click(Sender: TObject);
begin
  wnwNActionExecute(Sender);
end;

procedure TForm1.RadioButton3Change(Sender: TObject);
begin
end;

procedure TForm1.RadioButton3Click(Sender: TObject);
begin
  wnwTActionExecute(Sender);
end;

procedure TForm1.RadioButton4Click(Sender: TObject);
begin
  SelectQ8String := 'select diary_record.cur_date, diary_record.hours, people.surname, task_desc.breef as wrk, diary_record."key" as dkey, diary_record.people_key, diary_record.task_desc_key, diary_record.nowork_key '
  + 'from diary_record, people, task_desc '
  + 'where people."key"=diary_record.people_key '
  + 'and task_desc."key"=diary_record.task_desc_key '
  + 'union all '
  + 'select diary_record.cur_date, diary_record.hours, people.surname, nowork.reason as nwk, diary_record."key" as dkey, diary_record.people_key, diary_record.task_desc_key, diary_record.nowork_key '
  + 'from diary_record, people, nowork '
  + 'where people."key"=diary_record.people_key '
  + 'and nowork."key"=diary_record.nowork_key '
  + 'order by diary_record.cur_date desc, people.surname asc;';
  SQLQuery8.Close;
  SQLQuery8.SQL.Clear;
  SQLQuery8.SQL.Add(SelectQ8String);
  SQLQuery8.Open;
  Grid6Formating();
  RadioButton4.Checked := True;
  RadioButton5.Checked := False;
  RadioButton6.Checked := False;
end;

procedure TForm1.RadioButton5Click(Sender: TObject);
var
//  TmpDate: TDateTime;
  TmpDateStr: String;
//  TmpPeopleKey: Integer;
//  TmpPeopleKeyStr: String;
  FS: TFormatSettings;
begin
  FS:=DefaultFormatSettings;
  FS.DateSeparator:='-';
  FS.ShortDateFormat:='yyyy-mm-dd';
//  TmpDate :=  StrToDate(DbGrid6.DataSource.DataSet.FieldByName('diary_record.cur_date').AsString, FS);
  TmpDateStr :=  DbGrid6.DataSource.DataSet.FieldByName('diary_record.cur_date').AsString;
//  TmpPeopleKey := DbGrid6.DataSource.DataSet.FieldByName('diary_record.people_key').AsInteger;
//  TmpPeopleKeyStr := DbGrid6.DataSource.DataSet.FieldByName('diary_record.people_key').AsString;
  SelectQ8String := 'select diary_record.cur_date, diary_record.hours, people.surname, task_desc.breef as wrk, diary_record."key" as dkey, diary_record.people_key, diary_record.task_desc_key, diary_record.nowork_key '
  + 'from diary_record, people, task_desc '
  + 'where people."key"=diary_record.people_key '
  + 'and task_desc."key"=diary_record.task_desc_key '
  + 'and diary_record.cur_date=''' + TmpDateStr + ''' '
  + 'union all '
  + 'select diary_record.cur_date, diary_record.hours, people.surname, nowork.reason as nwk, diary_record."key" as dkey, diary_record.people_key, diary_record.task_desc_key, diary_record.nowork_key '
  + 'from diary_record, people, nowork '
  + 'where people."key"=diary_record.people_key '
  + 'and nowork."key"=diary_record.nowork_key '
  + 'and diary_record.cur_date=''' + TmpDateStr + ''' '
  + 'order by diary_record.cur_date desc, people.surname asc;';
  SQLQuery8.Close;
  SQLQuery8.SQL.Clear;
  SQLQuery8.SQL.Add(SelectQ8String);
  SQLQuery8.Open;
  Grid6Formating();
  RadioButton4.Checked := False;
  RadioButton5.Checked := True;
  RadioButton6.Checked := False;
end;

procedure TForm1.RadioButton6Click(Sender: TObject);
var
//  TmpDate: TDateTime;
//  TmpDateStr: String;
//  TmpPeopleKey: Integer;
  TmpPeopleKeyStr: String;
  FS: TFormatSettings;
begin
  FS:=DefaultFormatSettings;
  FS.DateSeparator:='-';
  FS.ShortDateFormat:='yyyy-mm-dd';
//  TmpDate :=  StrToDate(DbGrid6.DataSource.DataSet.FieldByName('diary_record.cur_date').AsString, FS);
//  TmpDateStr :=  DbGrid6.DataSource.DataSet.FieldByName('diary_record.cur_date').AsString;
//  TmpPeopleKey := DbGrid6.DataSource.DataSet.FieldByName('diary_record.people_key').AsInteger;
  TmpPeopleKeyStr := DbGrid6.DataSource.DataSet.FieldByName('diary_record.people_key').AsString;
  SelectQ8String := 'select diary_record.cur_date, diary_record.hours, people.surname, task_desc.breef as wrk, diary_record."key" as dkey, diary_record.people_key, diary_record.task_desc_key, diary_record.nowork_key '
  + 'from diary_record, people, task_desc '
  + 'where people."key"=diary_record.people_key '
  + 'and task_desc."key"=diary_record.task_desc_key '
  + 'and diary_record.people_key=' + TmpPeopleKeyStr + ' '
  + 'union all '
  + 'select diary_record.cur_date, diary_record.hours, people.surname, nowork.reason as nwk, diary_record."key" as dkey, diary_record.people_key, diary_record.task_desc_key, diary_record.nowork_key '
  + 'from diary_record, people, nowork '
  + 'where people."key"=diary_record.people_key '
  + 'and nowork."key"=diary_record.nowork_key '
  + 'and diary_record.people_key=' + TmpPeopleKeyStr + ' '
  + 'order by diary_record.cur_date desc, people.surname asc;';
  SQLQuery8.Close;
  SQLQuery8.SQL.Clear;
  SQLQuery8.SQL.Add(SelectQ8String);
  SQLQuery8.Open;
  Grid6Formating();
  RadioButton4.Checked := False;
  RadioButton5.Checked := False;
  RadioButton6.Checked := True;
end;

procedure TForm1.SQLite3Connection1AfterConnect(Sender: TObject);
begin
  SQLQuery9.Close;
  SQLQuery9.SQL.Clear;
  SQLQuery9.SQL.Add('select * from sort_filters where name = ''rem1'';');
  SQLQuery9.Open;
  s_fmemActCheckBox.Checked := SQLQuery9.FieldByName('num').AsBoolean;
  sf_r1 := SQLQuery9.FieldByName('num').AsInteger;
  SQLQuery9.Close;
  SQLQuery9.SQL.Clear;
  SQLQuery9.SQL.Add('select * from sort_filters where name = ''rem2'';');
  SQLQuery9.Open;
  sf_r2 := SQLQuery9.FieldByName('num').AsInteger;
  s_fmemsrtRadioGroup.ItemIndex := sf_r2;
  SQLQuery9.Close;
  SQLQuery9.SQL.Clear;
  SQLQuery9.SQL.Add('select * from sort_filters where name = ''dtl1'';');
  SQLQuery9.Open;
  sf_dt1 := SQLQuery9.FieldByName('num').AsInteger;
  s_fdiatskaddRadioGroup.ItemIndex := sf_dt1;
  SQLQuery9.Close;
  SQLQuery9.SQL.Clear;
  SQLQuery9.SQL.Add('select * from sort_filters where name = ''dtl2'';');
  SQLQuery9.Open;
  sf_dt2 := SQLQuery9.FieldByName('num').AsInteger;
  s_fdiatsksrtRadioGroup.ItemIndex := sf_dt2;
  SQLQuery9.Close;
  SQLQuery9.SQL.Clear;
  SQLQuery9.SQL.Add('select * from sort_filters where name = ''dl1'';');
  SQLQuery9.Open;
  sf_dl1 := SQLQuery9.FieldByName('num').AsInteger;
  s_fdiaaddRadioGroup.ItemIndex := sf_dl1;
  SQLQuery9.Close;
  SQLQuery9.SQL.Clear;
  SQLQuery9.SQL.Add('select * from sort_filters where name = ''tl1'';');
  SQLQuery9.Open;
  sf_tl1 := SQLQuery9.FieldByName('num').AsInteger;
  s_ftsksrtRadioGroup.ItemIndex := sf_tl1;
  SQLQuery9.Close;
end;

procedure TForm1.StringGrid1PrepareCanvas(sender: TObject; aCol, aRow: Integer;
  aState: TGridDrawState);
var
  MyTextStyle: TTextStyle;
begin
  MyTextStyle := StringGrid1.Canvas.TextStyle;
  MyTextStyle.SingleLine := false;
  StringGrid1.Canvas.TextStyle := MyTextStyle;
end;

procedure TForm1.s_fdiaaddRadioGroupSelectionChanged(Sender: TObject);
begin
  SQLQuery9.Close;
  SQLQuery9.SQL.Clear;
  SQLQuery9.SQL.Add('update sort_filters set num=' + IntToStr(s_fdiaaddRadioGroup.ItemIndex) + ' where name = ''dl1'';');
  SQLQuery9.ExecSQL;
  SQLTransaction1.Commit;
end;

procedure TForm1.s_fdiatskaddRadioGroupSelectionChanged(Sender: TObject);
begin
  SQLQuery9.Close;
  SQLQuery9.SQL.Clear;
  SQLQuery9.SQL.Add('update sort_filters set num=' + IntToStr(s_fdiatskaddRadioGroup.ItemIndex) + ' where name = ''dtl1'';');
  SQLQuery9.ExecSQL;
  SQLTransaction1.Commit;
end;

procedure TForm1.s_fdiatsksrtRadioGroupSelectionChanged(Sender: TObject);
begin
  SQLQuery9.Close;
  SQLQuery9.SQL.Clear;
  SQLQuery9.SQL.Add('update sort_filters set num=' + IntToStr(s_fdiatsksrtRadioGroup.ItemIndex) + ' where name = ''dtl2'';');
  SQLQuery9.ExecSQL;
  SQLTransaction1.Commit;
end;

procedure TForm1.s_fmemActCheckBoxChange(Sender: TObject);
begin
  SQLQuery9.Close;
  SQLQuery9.SQL.Clear;
  SQLQuery9.SQL.Add('update sort_filters set num=' + BoolToStr(s_fmemActCheckBox.Checked) + ' where name = ''rem1'';');
  SQLQuery9.ExecSQL;
  SQLTransaction1.Commit;
end;

procedure TForm1.s_fmemsrtRadioGroupSelectionChanged(Sender: TObject);
begin
  SQLQuery9.Close;
  SQLQuery9.SQL.Clear;
  SQLQuery9.SQL.Add('update sort_filters set num=' + IntToStr(s_fmemsrtRadioGroup.ItemIndex) + ' where name = ''rem2'';');
  SQLQuery9.ExecSQL;
  SQLTransaction1.Commit;
end;

procedure TForm1.s_ftsksrtRadioGroupSelectionChanged(Sender: TObject);
begin
  SQLQuery9.Close;
  SQLQuery9.SQL.Clear;
  SQLQuery9.SQL.Add('update sort_filters set num=' + IntToStr(s_ftsksrtRadioGroup.ItemIndex) + ' where name = ''tl1'';');
  SQLQuery9.ExecSQL;
  SQLTransaction1.Commit;
end;

procedure TForm1.TabControl1Change(Sender: TObject);
begin
  if(TabControl1.Tabs[TabControl1.TabIndex] = 'All') then begin
    SQLQuery1.Close;
    SQLQuery1.SQL.Clear;
    SQLQuery1.SQL.Add('select * from mem where done = 0;');
    SQLQuery1.Open;
  end
  else if(TabControl1.Tabs[TabControl1.TabIndex] = 'Done') then begin
    SQLQuery1.Close;
    SQLQuery1.SQL.Clear;
    SQLQuery1.SQL.Add('select * from mem where done = 1;');
    SQLQuery1.Open;
  end;
end;

procedure TForm1.TabControl1Changing(Sender: TObject; var AllowChange: Boolean);
begin
end;

procedure TForm1.ToolBar3Click(Sender: TObject);
begin

end;

procedure TForm1.TrayIcon1DblClick(Sender: TObject);
begin
  Form1.WindowState:=wsNormal;
  Form1.Show;
  Form1.SetFocus;
//  TrayIcon1.Visible:=false;
end;

procedure TForm1.tskaddActionExecute(Sender: TObject);
//var
//  TempKey: Integer;
begin
//  TempKey := Form1.DBGrid5.DataSource.DataSet.FieldByName('key').AsInteger;
//  CurTskKey := TempKey;
  tskAct := NEW;
  TaskEditForm.Show;
end;

procedure TForm1.tskdelActionExecute(Sender: TObject);
var
  TempKey: Integer;
begin
  TempKey := Form1.DBGrid5.DataSource.DataSet.FieldByName('key').AsInteger;
  CurTskKey := TempKey;
  TaskEditForm.SQLQuery1.Close;
  TaskEditForm.SQLQuery1.SQL.Clear;
  TaskEditForm.SQLQuery1.SQL.Add('delete from task where key='+IntToStr(TempKey)+';');
  TaskEditForm.SQLQuery1.ExecSQL;
  SQLite3Connection1.Transaction.Commit;
  SQLQuery5.Close;
  SQLQuery5.SQL.Clear;
  SQLQuery5.SQL.Add('select * from task;');
  SQLQuery5.Open;
end;

procedure TForm1.tskdelMenuItemClick(Sender: TObject);
begin
  tskdelActionExecute(Sender);
end;

procedure TForm1.tskdscaddActionExecute(Sender: TObject);
begin
  tskAct := NEW;
  TaskDescEditForm.Show;
end;

procedure TForm1.tskdscdelActionExecute(Sender: TObject);
var
  TempKey: Integer;
begin
  TempKey := Form1.DBGrid8.DataSource.DataSet.FieldByName('key').AsInteger;
  CurTskDscKey := TempKey;
  TaskDescEditForm.SQLQuery1.Close;
  TaskDescEditForm.SQLQuery1.SQL.Clear;
  TaskDescEditForm.SQLQuery1.SQL.Add('delete from task_desc where key='+IntToStr(TempKey)+';');
  TaskDescEditForm.SQLQuery1.ExecSQL;
  SQLite3Connection1.Transaction.Commit;
  SQLQuery10.Close;
  SQLQuery10.SQL.Clear;
  SQLQuery10.SQL.Add('select * from task_desc;');
  SQLQuery10.Open;
end;

procedure TForm1.tskdscedtActionExecute(Sender: TObject);
var
  TempKey: Integer;
begin
  TempKey := Form1.DBGrid8.DataSource.DataSet.FieldByName('key').AsInteger;
  CurTskDscKey := TempKey;
  tskAct := EDT;
  TaskDescEditForm.Show;
end;

procedure TForm1.tskedtActionExecute(Sender: TObject);
var
  TempKey: Integer;
begin
  TempKey := Form1.DBGrid5.DataSource.DataSet.FieldByName('key').AsInteger;
  CurTskKey := TempKey;
  tskAct := EDT;
  TaskEditForm.Show;
end;

procedure TForm1.tskedtMenuItemClick(Sender: TObject);
begin
  tskedtActionExecute(Sender);
end;

procedure TForm1.wnwNActionExecute(Sender: TObject);
begin
  diatskEdit.Visible := False;
  diatskDBLookupComboBox.Visible := True;
  diatskDBLookupComboBox.ListField := '';
  diatskDBLookupComboBox.KeyField := '';
  Form1.SQLQuery7.Close;
  Form1.SQLQuery7.SQL.Clear;
  Form1.SQLQuery7.SQL.Add('select * from nowork;');
  Form1.SQLQuery7.Open;
  diatskDBLookupComboBox.ListSource := DataSource7;
  diatskDBLookupComboBox.ListField := 'reason';
  diatskDBLookupComboBox.KeyField := 'key';
  RadioButton1.Checked := False;
  RadioButton2.Checked := True;
  RadioButton3.Checked := False;
end;

procedure TForm1.wnwTActionExecute(Sender: TObject);
begin
  diatskEdit.Visible := True;
  diatskDBLookupComboBox.Visible := False;
  diatskDBLookupComboBox.ListField := '';
  diatskDBLookupComboBox.KeyField := '';
  Form1.SQLQuery7.Close;
  Form1.SQLQuery7.SQL.Clear;
  Form1.SQLQuery7.SQL.Add('select * from task_desc order by "key" desc;');
  Form1.SQLQuery7.Open;
  diatskDBLookupComboBox.ListSource := DataSource7;
  diatskDBLookupComboBox.ListField := 'breef';
  diatskDBLookupComboBox.KeyField := 'key';
  RadioButton1.Checked := False;
  RadioButton2.Checked := False;
  RadioButton3.Checked := True;
  diatskEdit.SetFocus;
end;

procedure TForm1.wnwWActionExecute(Sender: TObject);
begin
  diatskEdit.Visible := False;
  diatskDBLookupComboBox.Visible := True;
  diatskDBLookupComboBox.ListField := '';
  diatskDBLookupComboBox.KeyField := '';
  Form1.SQLQuery7.Close;
  Form1.SQLQuery7.SQL.Clear;
  Form1.SQLQuery7.SQL.Add('select * from task_desc order by "key" desc;');
  Form1.SQLQuery7.Open;
  diatskDBLookupComboBox.ListSource := DataSource7;
  diatskDBLookupComboBox.ListField := 'breef';
  diatskDBLookupComboBox.KeyField := 'key';
  RadioButton1.Checked := True;
  RadioButton2.Checked := False;
  RadioButton3.Checked := False;
end;

procedure TForm1.nwMenuItemClick(Sender: TObject);
begin
  wnwNActionExecute(Sender);
end;

procedure TForm1.wrkMenuItemClick(Sender: TObject);
begin
  wnwWActionExecute(Sender);
end;

end.

