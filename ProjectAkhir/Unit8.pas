unit Unit8;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frxClass, frxDBSet, DB, StdCtrls, Grids, DBGrids;

type
  TForm8 = class(TForm)
    lbl1: TLabel;
    lbl2: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    edt1: TEdit;
    edt2: TEdit;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    btn4: TButton;
    btn5: TButton;
    dbgrd1: TDBGrid;
    cbb1: TComboBox;
    cbb2: TComboBox;
    btn6: TButton;
    ds5: TDataSource;
    frxdbdtst5: TfrxDBDataset;
    frxrprt5: TfrxReport;
    procedure bersih;
    procedure hidup;
    procedure kondisiawal;
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure btn5Click(Sender: TObject);
    procedure btn6Click(Sender: TObject);
    procedure dbgrd1CellClick(Column: TColumn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form8: TForm8;
  nama:string;
  id:string;

implementation

uses
  Unit2;

{$R *.dfm}

procedure TForm8.bersih;
begin
  edt1.Clear;
  edt2.Clear;
  cbb1.Text:='==pilih==';
  cbb2.Text:='==pilih==';
end;

procedure TForm8.hidup;
begin
  edt1.Enabled:= True;
  edt2.Enabled:= True;
  cbb1.Enabled:= True;
  cbb2.Enabled:= True;
end;

procedure TForm8.kondisiawal;
begin

  bersih;

  btn1.Enabled:= True;
  btn2.Enabled:= False;
  btn3.Enabled:= False;
  btn4.Enabled:= False;
  btn5.Enabled:= False;

  edt1.Enabled:= False;
  edt2.Enabled:= False;
  cbb1.Enabled:= False;
  cbb2.Enabled:= False;
end;

procedure TForm8.btn1Click(Sender: TObject);
begin
  bersih;
  btn1.Enabled:= False;
  btn2.Enabled:= True;
  btn3.Enabled:= False;
  btn4.Enabled:= False;
  btn5.Enabled:= True;
  hidup;
end;

procedure TForm8.btn2Click(Sender: TObject);
begin
nama:=  DataModule2.ZQuery_poin.Fields[1].AsString;

if edt1.Text = nama then
begin
ShowMessage('NAMA POIN SUDAH ADA!');
end else
if edt1.Text ='' then
begin
ShowMessage('NAMA TIDAK BOLEH KOSONG!');
end else
if edt2.Text ='' then
begin
ShowMessage('BOBOT TIDAK BOLEH KOSONG!');
end else
if cbb1.Text ='==pilih==' then
begin
ShowMessage('JENIS BELUM DIISI DENGAN BENAR!');
end else
if cbb2.Text ='==pilih==' then
begin
ShowMessage('STATUS BELUM DIISI DENGAN BENAR!');
end else
begin
DataModule2.ZQuery_poin.SQL.Clear; //simpan
DataModule2.ZQuery_poin.SQL.Add('insert into tablepoin values(null,"'+edt1.Text+'","'+edt2.Text+'","'+cbb1.Text+'","'+cbb2.Text+'")');
DataModule2.ZQuery_poin.ExecSQL ;

DataModule2.ZQuery_poin.SQL.Clear;
DataModule2.ZQuery_poin.SQL.Add('select * from tablepoin');
DataModule2.ZQuery_poin.Open;
ShowMessage('DATA BERHASIL DISIMPAN!');
kondisiawal;
end;

end;

procedure TForm8.btn3Click(Sender: TObject);
begin
  if (edt1.Text= '')or (edt2.Text ='')or(cbb1.Text= '')or (cbb2.Text ='') then
begin
ShowMessage('INPUTAN WAJIB DIISI!');
kondisiawal;
end else
begin
ShowMessage('DATA BERHASIL DIUPDATE!'); //UPDATE
DataModule2.ZQuery_poin.SQL.Clear;
DataModule2.ZQuery_poin.SQL.Add('Update tablepoin set nama_poin="'+edt1.Text+'",bobot="'+edt2.Text+'",jenis="'+cbb1.Text+'",status="'+cbb2.Text+'" where id="'+id+'"');
DataModule2.ZQuery_poin. ExecSQL;

DataModule2.ZQuery_poin.SQL.Clear;
DataModule2.ZQuery_poin.SQL.Add('select * from tablepoin');
DataModule2.ZQuery_poin.Open;
kondisiawal;
end;

end;

procedure TForm8.btn4Click(Sender: TObject);
begin
if MessageDlg('APAKAH YAKIN MENGHAPUS DATA INI?',mtWarning,[mbYes,mbNo],0)= mryes then
begin
DataModule2.ZQuery_poin.SQL.Clear;
DataModule2.ZQuery_poin.SQL.Add(' delete from tablepoin where id="'+id+'"');
DataModule2.ZQuery_poin. ExecSQL;
DataModule2.ZQuery_poin.SQL.Clear;
DataModule2.ZQuery_poin.SQL.Add('select * from tablepoin');
DataModule2.ZQuery_poin.Open;
ShowMessage('DATA BERHASIL DIHAPUS');
kondisiawal;
end else
begin
 ShowMessage('DATA BATAL DIHAPUS');
kondisiawal;
end;

end;

procedure TForm8.btn5Click(Sender: TObject);
begin
kondisiawal;
end;

procedure TForm8.btn6Click(Sender: TObject);
begin
  frxrprt5.ShowReport;
end;

procedure TForm8.dbgrd1CellClick(Column: TColumn);
begin
 id:= DataModule2.ZQuery_poin.Fields[0].AsString; // DBGrid
edt1.Text:= DataModule2.ZQuery_poin.Fields[1].AsString;
edt2.Text:= DataModule2.ZQuery_poin.Fields[2].AsString;
cbb1.Text:= DataModule2.ZQuery_poin.Fields[3].AsString;
cbb2.Text:= DataModule2.ZQuery_poin.Fields[4].AsString;
hidup;

btn1.Enabled:= false;
btn2.Enabled:= False;
btn3.Enabled:= True;
btn4.Enabled:= True;
btn5.Enabled:= True;

end;

end.
