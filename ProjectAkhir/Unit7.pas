unit Unit7;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frxClass, frxDBSet, DB, Grids, DBGrids, StdCtrls;

type
  TForm7 = class(TForm)
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
    cbb1: TComboBox;
    edt3: TEdit;
    edt4: TEdit;
    edt5: TEdit;
    edt6: TEdit;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    btn4: TButton;
    btn5: TButton;
    dbgrd1: TDBGrid;
    edt8: TEdit;
    btn6: TButton;
    ds1: TDataSource;
    frxdbdtst1: TfrxDBDataset;
    frxrprt1: TfrxReport;
    procedure bersih;
    procedure kondisiawal;
    procedure hidup;
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
  Form7: TForm7;
  nik: string;
  id:string;

implementation

uses
  Unit2;

{$R *.dfm}

{ TForm7 }

procedure TForm7.bersih;
begin
  edt1.Clear;
  edt2.Clear;
  cbb1.Text:='==pilih==';
  edt3.Clear;
  edt4.Clear;
  edt5.Clear;
  edt6.Clear;
  edt8.Clear;
end;

procedure TForm7.hidup;
begin
  edt1.Enabled:= True;
  edt2.Enabled:= True;
  cbb1.Enabled:= True;
  edt3.Enabled:= True;
  edt4.Enabled:= True;
  edt5.Enabled:= True;
  edt6.Enabled:= True;
  edt8.Enabled:= True;
end;

procedure TForm7.kondisiawal;
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
  edt3.Enabled:= False;
  edt4.Enabled:= False;
  edt5.Enabled:= False;
  edt6.Enabled:= False;
  edt8.Enabled:= False;
end;

procedure TForm7.btn1Click(Sender: TObject);
begin
  bersih;
  btn1.Enabled:= False;
  btn2.Enabled:= True;
  btn3.Enabled:= False;
  btn4.Enabled:= False;
  btn5.Enabled:= True;
  hidup;
end;

procedure TForm7.btn2Click(Sender: TObject);
begin
nik:=  DataModule2.ZQuery_wali_kelas.Fields[1].AsString;

if edt1.Text = nik then
begin
ShowMessage('NIK SUDAH ADA!');
end else
if edt1.Text ='' then
begin
ShowMessage('NIK TIDAK BOLEH KOSONG!');
end else
if edt2.Text ='' then
begin
ShowMessage('NAMA TIDAK BOLEH KOSONG!');
end else
if cbb1.Text ='==pilih==' then
begin
ShowMessage('JENIS KELAMIN TIDAK BOLEH KOSONG!');
end else
if edt3.Text ='' then
begin
ShowMessage('PENDIDIKAN TIDAK BOLEH KOSONG!');
end else
if edt4.Text ='' then
begin
ShowMessage('NO TELP TIDAK BOLEH KOSONG!');
end else
if edt5.Text ='' then
begin
ShowMessage('MATA PELAJARAN TIDAK BOLEH KOSONG!');
end else
if edt6.Text ='' then
begin
ShowMessage('ALAMAT TIDAK BOLEH KOSONG!');
end else
if edt8.Text ='' then
begin
ShowMessage('STATUS TIDAK BOLEH KOSONG!');
end else
begin
DataModule2.ZQuery_wali_kelas.SQL.Clear; //simpan
DataModule2.ZQuery_wali_kelas.SQL.Add('insert into wali_kelas values(null,"'+edt1.Text+'","'+edt2.Text+'","'+cbb1.Text+'","'+edt3.Text+'","'+edt4.Text+'","'+edt5.Text+'","'+edt6.Text+'","'+edt8.Text+'")');
DataModule2.ZQuery_wali_kelas.ExecSQL ;

DataModule2.ZQuery_wali_kelas.SQL.Clear;
DataModule2.ZQuery_wali_kelas.SQL.Add('select * from wali_kelas');
DataModule2.ZQuery_wali_kelas.Open;
ShowMessage('DATA BARHASIL DISIMPAN!');
kondisiawal;
end;

end;

procedure TForm7.btn3Click(Sender: TObject);
begin
  if (edt1.Text= '')or (edt2.Text ='')or(cbb1.Text= '')or(edt3.Text= '')or (edt4.Text ='')or (edt5.Text ='')or (edt6.Text= '')or(edt8.Text= '') then
begin
ShowMessage('INPUTAN WAJIB DIISI!');
kondisiawal;
end else
begin
ShowMessage('DATA BERHASIL DIUPDATE!'); //UPDATE
DataModule2.ZQuery_wali_kelas.SQL.Clear;
DataModule2.ZQuery_wali_kelas.SQL.Add('Update wali_kelas set nik="'+edt1.Text+'",nama="'+edt2.Text+'",jk="'+cbb1.Text+'",pendidikan="'+edt3.Text+'",telp="'+edt4.Text+'",matpel="'+edt5.Text+'",alamat="'+edt6.Text+'",status="'+edt8.Text+'" where id="'+id+'"');
DataModule2.ZQuery_wali_kelas. ExecSQL;

DataModule2.ZQuery_wali_kelas.SQL.Clear;
DataModule2.ZQuery_wali_kelas.SQL.Add('select * from wali_kelas');
DataModule2.ZQuery_wali_kelas.Open;
kondisiawal;
end;

end;

procedure TForm7.btn4Click(Sender: TObject);
begin
if MessageDlg('APAKAH YAKIN MENGHAPUS DATA INI?',mtWarning,[mbYes,mbNo],0)= mryes then
begin
DataModule2.ZQuery_wali_kelas.SQL.Clear;
DataModule2.ZQuery_wali_kelas.SQL.Add(' delete from wali_kelas where id="'+id+'"');
DataModule2.ZQuery_wali_kelas. ExecSQL;
DataModule2.ZQuery_wali_kelas.SQL.Clear;
DataModule2.ZQuery_wali_kelas.SQL.Add('select * from wali_kelas');
DataModule2.ZQuery_wali_kelas.Open;
ShowMessage('DATA BERHASIL DIHAPUS');
kondisiawal;
end else
begin
 ShowMessage('DATA BATAL DIHAPUS');
kondisiawal;
end;

end;

procedure TForm7.btn5Click(Sender: TObject);
begin
  kondisiawal;
end;

procedure TForm7.btn6Click(Sender: TObject);
begin
  frxrprt1.ShowReport;
end;

procedure TForm7.dbgrd1CellClick(Column: TColumn);
begin
id:= DataModule2.ZQuery_wali_kelas.Fields[0].AsString; // DBGrid
edt1.Text:= DataModule2.ZQuery_wali_kelas.Fields[1].AsString;
edt2.Text:= DataModule2.ZQuery_wali_kelas.Fields[2].AsString;
cbb1.Text:= DataModule2.ZQuery_wali_kelas.Fields[3].AsString;
edt3.Text:= DataModule2.ZQuery_wali_kelas.Fields[4].AsString;
edt4.Text:= DataModule2.ZQuery_wali_kelas.Fields[5].AsString;
edt5.Text:= DataModule2.ZQuery_wali_kelas.Fields[6].AsString;
edt6.Text:= DataModule2.ZQuery_wali_kelas.Fields[7].AsString;
edt8.Text:= DataModule2.ZQuery_wali_kelas.Fields[8].AsString;
hidup;

btn1.Enabled:= false;
btn2.Enabled:= False;
btn3.Enabled:= True;
btn4.Enabled:= True;
btn5.Enabled:= True;

end;

end.
