unit Unit12;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frxClass, frxDBSet, DB, StdCtrls, Grids, DBGrids;

type
  TForm12 = class(TForm)
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    lbl6: TLabel;
    lbl7: TLabel;
    lbl8: TLabel;
    edt1: TEdit;
    edt2: TEdit;
    edt3: TEdit;
    btn1: TButton;
    btn2: TButton;
    btn4: TButton;
    btn5: TButton;
    dbgrd1: TDBGrid;
    cbb1: TComboBox;
    edt4: TEdit;
    edt5: TEdit;
    btn3: TButton;
    edt6: TEdit;
    edt7: TEdit;
    btn6: TButton;
    ds4: TDataSource;
    frxdbdtst4: TfrxDBDataset;
    frxrprt4: TfrxReport;
    procedure bersih;
    procedure kondisiawal;
    procedure hidup;
    procedure ubah;
    procedure dbgrd1CellClick(Column: TColumn);
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure btn5Click(Sender: TObject);
    procedure btn6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form12: TForm12;
  id:string;
  username:string;
  edit:string;
  tgl:string;

implementation

uses
  Unit2;

{$R *.dfm}

procedure TForm12.bersih;
begin
  edt1.Clear;
  edt2.Clear;
  edt3.Clear;
  cbb1.Text:='==pilih==';
  edt4.Clear;
  edt5.Text:='0000-00-00';
  edt6.Clear;
  edt7.Text:='0000-00-00';
end;

procedure TForm12.hidup;
begin
edt1.Enabled:= True;
  edt2.Enabled:= True;
  edt3.Enabled:= True;
  cbb1.Enabled:= True;
  edt4.Enabled:= True;
  edt5.Enabled:= True;
  edt6.Enabled:= False;
  edt7.Enabled:= True;
end;

procedure TForm12.kondisiawal;
begin
  bersih;

  btn1.Enabled:= True;
  btn2.Enabled:= False;
  btn3.Enabled:= False;
  btn4.Enabled:= False;
  btn5.Enabled:= False;

  edt1.Enabled:= False;
  edt2.Enabled:= False;
  edt3.Enabled:= False;
  cbb1.Enabled:= False;
  edt4.Enabled:= False;
  edt5.Enabled:= False;
  edt6.Enabled:= False;
  edt7.Enabled:= False;
end;

procedure TForm12.ubah;
begin
  edt1.Enabled:= True;
  edt2.Enabled:= True;
  edt3.Enabled:= True;
  cbb1.Enabled:= True;
  edt4.Enabled:= True;
  edt5.Enabled:= False;
  edt6.Enabled:= False;
  edt7.Enabled:= True;
end;

procedure TForm12.dbgrd1CellClick(Column: TColumn);
begin
 id:= DataModule2.ZQuery_user.Fields[0].AsString; // DBGrid
edt1.Text:= DataModule2.ZQuery_user.Fields[1].AsString;
edt2.Text:= DataModule2.ZQuery_user.Fields[2].AsString;
edt3.Text:= DataModule2.ZQuery_user.Fields[3].AsString;
cbb1.Text:= DataModule2.ZQuery_user.Fields[4].AsString;
edt4.Text:= DataModule2.ZQuery_user.Fields[5].AsString;
edt5.Text:= DataModule2.ZQuery_user.Fields[6].AsString;
edt6.Text:= DataModule2.ZQuery_user.Fields[7].AsString;
edt7.Text:= DataModule2.ZQuery_user.Fields[8].AsString;
ubah;

btn1.Enabled:= false;
btn2.Enabled:= False;
btn3.Enabled:= True;
btn4.Enabled:= True;
btn5.Enabled:= True;
end;

procedure TForm12.btn1Click(Sender: TObject);
begin
bersih;
  btn1.Enabled:= False;
  btn2.Enabled:= True;
  btn3.Enabled:= False;
  btn4.Enabled:= False;
  btn5.Enabled:= True;
  hidup;
end;

procedure TForm12.btn2Click(Sender: TObject);
begin
username:= DataModule2.ZQuery_user.Fields[1].AsString;

if edt1.Text = username then
begin
ShowMessage('USERNAME SUDAH ADA!');
end else
if edt1.Text ='' then
begin
ShowMessage('USERNAME TIDAK BOLEH KOSONG!');
end else
if edt2.Text ='' then
begin
ShowMessage('PASSWORD TIDAK BOLEH KOSONG!');
end else
if edt3.Text ='' then
begin
ShowMessage('STATUS TIDAK BOLEH KOSONG!');
end else
if cbb1.Text ='==pilih==' then
begin
ShowMessage('LEVEL TIDAK DI ISI DENGAN BENAR!');
end else
if edt4.Text ='' then
begin
ShowMessage('STATUS TIDAK BOLEH KOSONG!');
end else
if edt5.Text ='' then
begin
ShowMessage('TANGGAL TIDAK BOLEH KOSONG!');
end else
begin
DataModule2.ZQuery_user.SQL.Clear; //simpan
DataModule2.ZQuery_user.SQL.Add('insert into tableuser values(null,"'+edt1.Text+'","'+edt2.Text+'","'+edt3.Text+'","'+cbb1.Text+'","'+edt4.Text+'","'+edt5.Text+'","'+edt6.Text+'","'+edt7.Text+'")');
DataModule2.ZQuery_user.ExecSQL ;

DataModule2.ZQuery_user.SQL.Clear;
DataModule2.ZQuery_user.SQL.Add('select * from tableuser');
DataModule2.ZQuery_user.Open;
ShowMessage('DATA BERHASIL DISIMPAN!');
kondisiawal;
end;
end;

procedure TForm12.btn3Click(Sender: TObject);
begin
id:= DataModule2.ZQuery_user.Fields[0].AsString;
tgl:= DataModule2.ZQuery_user.Fields[8].AsString;
if (edt1.Text= '')or(edt2.Text ='')or(edt3.Text= '')or (cbb1.Text ='')or (edt4.Text ='')or (edt5.Text= '')or (edt6.Text= '')or(edt7.Text= '+tgl+') then
begin
ShowMessage('INPUTAN WAJIB DIUBAH!');
kondisiawal;
end else
begin
ShowMessage('DATA BERHASIL DIUPDATE!'); //UPDATE
DataModule2.ZQuery_user.SQL.Clear;
DataModule2.ZQuery_user.SQL.Add('Update tableuser set username="'+edt1.Text+'",password="'+edt2.Text+'",statushubanak="'+edt3.Text+'",level="'+cbb1.Text+'",status="'+edt4.Text+'",created_at="'+edt5.Text+'",created_userid="'+id+'",update_at="'+edt7.Text+'" where id="'+id+'"');
DataModule2.ZQuery_user. ExecSQL;

DataModule2.ZQuery_user.SQL.Clear;
DataModule2.ZQuery_user.SQL.Add('select * from tableuser');
DataModule2.ZQuery_user.Open;
kondisiawal;
end;

end;

procedure TForm12.btn4Click(Sender: TObject);
begin
if MessageDlg('APAKAH YAKIN MENGHAPUS DATA INI?',mtWarning,[mbYes,mbNo],0)= mryes then
begin
DataModule2.ZQuery_user.SQL.Clear;
DataModule2.ZQuery_user.SQL.Add(' delete from tableuser where id="'+id+'"');
DataModule2.ZQuery_user. ExecSQL;
DataModule2.ZQuery_user.SQL.Clear;
DataModule2.ZQuery_user.SQL.Add('select * from tableuser');
DataModule2.ZQuery_user.Open;
ShowMessage('DATA BERHASIL DIHAPUS');
kondisiawal;
end else
begin
 ShowMessage('DATA BATAL DIHAPUS');
kondisiawal;
end;

end;

procedure TForm12.btn5Click(Sender: TObject);
begin
kondisiawal;
end;

procedure TForm12.btn6Click(Sender: TObject);
begin
frxrprt4.ShowReport;
end;

end.
