unit Unit4;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, db, sqldb, FileUtil, DateTimePicker, Forms, Controls,
  Graphics, Dialogs, ComCtrls, Buttons, StdCtrls, DbCtrls, DBGrids, strutils;

type

  { TTaskDescEditForm }

  TTaskDescEditForm = class(TForm)
    BitBtn1: TBitBtn;
    DataSource2: TDataSource;
    DBGrid1: TDBGrid;
    Label1: TLabel;
    SQLQuery2: TSQLQuery;
    tskdescEditNewButton: TBitBtn;
    tskdescEditEditButton: TBitBtn;
    tskdescEditDelButton: TBitBtn;
    DataSource1: TDataSource;
    tskdscEditBreefEdit: TEdit;
    SQLQuery1: TSQLQuery;
    ToolBar6: TToolBar;
    tskEditBreefEdit: TEdit;
    tskdscEditMemo: TMemo;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure tskdescEditDelButtonClick(Sender: TObject);
    procedure tskdescEditEditButtonClick(Sender: TObject);
    procedure tskdescEditNewButtonClick(Sender: TObject);
    procedure tskdscwaddActionExecute(Sender: TObject);
    procedure tskdscwedtActionExecute(Sender: TObject);

  private
    { private declarations }
  public
    { public declarations }
  end;

var
  TaskDescEditForm: TTaskDescEditForm;

implementation
uses
  Unit1;

{$R *.lfm}
procedure TTaskDescEditForm.FormActivate(Sender: TObject);
var
  SqlString: String;
  tdKey: Integer;
begin
  BitBtn1.Caption := '';
  tskdescEditNewButton.Caption := '';
  tskdescEditEditButton.Caption := '';
  tskdescEditDelButton.Caption := '';

  if(tskAct = EDT) then begin
    tskdscEditBreefEdit.Text := Form1.SQLQuery10.FieldByName('breef').AsString;
    tskdscEditMemo.Text := Form1.SQLQuery10.FieldByName('text').AsString;
    tdKey := Form1.SQLQuery10.FieldByName('key').AsInteger;

    SqlString := 'select cur_date from diary_record where task_desc_key = ' + IntToStr(tdKey) + ' order by cur_date;';
    SQLQuery2.Close;
    SQLQuery2.SQL.Clear;
    SQLQuery2.SQL.Add(SqlString);
    SQLQuery2.Open;
    SQLQuery2.First;
    Label1.Caption := SQLQuery2.FieldByName('cur_date').AsString;

    SqlString := 'select cur_date from diary_record where task_desc_key = ' + IntToStr(tdKey) + ' order by cur_date;';
    SQLQuery2.Close;
    SQLQuery2.SQL.Clear;
    SQLQuery2.SQL.Add(SqlString);
    SQLQuery2.Open;
    SQLQuery2.Last;
    Label1.Caption := Label1.Caption + ' - ' + SQLQuery2.FieldByName('cur_date').AsString;

    SqlString := 'select people.surname as name, sum(diary_record.hours) as hours from diary_record, people ' +
                 'where ' +
                 'people."key" = diary_record.people_key' +
                 ' and ' +
                 'diary_record.task_desc_key = ' + IntToStr(tdKey) +
                 ' group by name;';
    SQLQuery2.Close;
    SQLQuery2.SQL.Clear;
    SQLQuery2.SQL.Add(SqlString);
    SQLQuery2.Open;
  end;
end;

procedure TTaskDescEditForm.BitBtn1Click(Sender: TObject);
begin
  TaskDescEditForm.Close;
end;

procedure TTaskDescEditForm.FormCreate(Sender: TObject);
begin

end;

procedure TTaskDescEditForm.tskdescEditDelButtonClick(Sender: TObject);
begin

end;

procedure TTaskDescEditForm.tskdescEditEditButtonClick(Sender: TObject);
begin
  tskdscwaddActionExecute(Sender);
end;

procedure TTaskDescEditForm.tskdescEditNewButtonClick(Sender: TObject);
begin
  tskdscwedtActionExecute(Sender);
end;

procedure TTaskDescEditForm.tskdscwaddActionExecute(Sender: TObject);
var
  SqlString: string;
  MemoString: string;
  PeopleString: string;
  TaskString: string;
  MaxKey: longint;
  ExpStr: string;
begin
  MemoString := DelChars(DelChars(tskdscEditMemo.Lines.Text, #13), #10);
  SqlString := ' (breef, text) VALUES ('''+
  tskEditBreefEdit.Text+''', '''+MemoString+''');';
  SqlString := 'INSERT INTO task_desc'+SqlString;

  SQLQuery1.Close;
  SQLQuery1.SQL.Clear;
  SQLQuery1.SQL.Add(SqlString);
  SQLQuery1.ExecSQL;
  Form1.SQLTransaction1.Commit;
  TaskDescEditForm.Close;
end;

procedure TTaskDescEditForm.tskdscwedtActionExecute(Sender: TObject);
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
  MemoString := DelChars(DelChars(tskdscEditMemo.Lines.Text, #13), #10);

  SqlString := ' breef = '''+tskEditBreefEdit.Text+
  ''', text = '''+MemoString+
  ';';
  SqlString := 'update task_desc set'+SqlString;

  SQLQuery1.Close;
  SQLQuery1.SQL.Clear;
  SQLQuery1.SQL.Add(SqlString);
  SQLQuery1.ExecSQL;
  Form1.SQLTransaction1.Commit;
  TaskDescEditForm.Close;
end;

end.

