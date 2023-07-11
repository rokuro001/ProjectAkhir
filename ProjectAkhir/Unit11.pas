unit Unit11;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frxClass, frxDBSet, DB, Grids, DBGrids, StdCtrls;

type
  TForm11 = class(TForm)
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    lbl7: TLabel;
    lbl8: TLabel;
    lbl9: TLabel;
    edt1: TEdit;
    edt2: TEdit;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    btn4: TButton;
    btn5: TButton;
    dbgrd1: TDBGrid;
    edt3: TEdit;
    edt4: TEdit;
    edt5: TEdit;
    edt6: TEdit;
    edt7: TEdit;
    edt8: TEdit;
    btn6: TButton;
    ds8: TDataSource;
    frxdbdtst8: TfrxDBDataset;
    frxrprt8: TfrxReport;
    procedure bersih;
    procedure hidup;
    procedure kondisiawal;
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
  Form11: TForm11;
  siswa: string;
  id:string;

implementation

uses
  Unit2;

{$R *.dfm}

procedure TForm11.bersih;
begin
  edt1.Clear;
  edt2.Clear;
  edt3.Clear;
  edt4.Clear;
  edt5.Clear;
  edt6.Clear;
  edt7.Clear;
end;

procedure TForm11.hidup;
begin
  edt1.Enabled:= True;
  edt2.Enabled:= True;
  edt3.Enabled:= True;
  edt4.Enabled:= True;
  edt5.Enabled:= True;
  edt6.Enabled:= True;
  edt7.Enabled:= True;
  edt8.Enabled:= True;
end;

procedure TForm11.kondisiawal;
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
  edt4.Enabled:= False;
  edt5.Enabled:= False;
  edt6.Enabled:= False;
  edt7.Enabled:= False;
  edt8.Enabled:= False;
end;

procedure TForm11.dbgrd1CellClick(Column: TColumn);
begin
id:= DataModule2.ZQuery_semester.Fields[0].AsString; // DBGrid
edt1.Text:= DataModule2.ZQuery_semester.Fields[1].AsString;
edt2.Text:= DataModule2.ZQuery_semester.Fields[2].AsString;
edt3.Text:= DataModule2.ZQuery_semester.Fields[3].AsString;
edt4.Text:= DataModule2.ZQuery_semester.Fields[4].AsString;
edt5.Text:= DataModule2.ZQuery_semester.Fields[5].AsString;
edt6.Text:= DataModule2.ZQuery_semester.Fields[6].AsString;
edt7.Text:= DataModule2.ZQuery_semester.Fields[7].AsString;
edt8.Text:= DataModule2.ZQuery_semester.Fields[8].AsString;
hidup;

btn1.Enabled:= false;
btn2.Enabled:= False;
btn3.Enabled:= True;
btn4.Enabled:= True;
btn5.Enabled:= True;

end;

procedure TForm11.btn1Click(Sender: TObject);
begin
 bersih;
  btn1.Enabled:= False;
  btn2.Enabled:= True;
  btn3.Enabled:= False;
  btn4.Enabled:= False;
  btn5.Enabled:= True;
  hidup;

end;

procedure TForm11.btn2Click(Sender: TObject);
begin
siswa:=  DataModule2.ZQuery_semester.Fields[1].AsString;

if edt1.Text = siswa then
begin
ShowMessage('ID SISWA SUDAH ADA!');
end else
if edt1.Text ='' then
begin
ShowMessage('ID SISWA TIDAK BOLEH KOSONG!');
end else
if edt2.Text ='' then
begin
ShowMessage('ID POIN TIDAK BOLEH KOSONG!');
end else
if edt3.Text ='' then
begin
ShowMessage('ID WALI TIDAK BOLEH KOSONG!');
end else
if edt4.Text ='' then
begin
ShowMessage('ID ORTU TIDAK BOLEH KOSONG!');
end else
if edt5.Text ='' then
begin
ShowMessage('ID KELAS LAHIR TIDAK BOLEH KOSONG!');
end else
if edt6.Text ='' then
begin
ShowMessage('SEMESTER TIDAK BOLEH KOSONG!');
end else
if edt7.Text ='' then
begin
ShowMessage('STATUS TIDAK BOLEH KOSONG!');
end else
if edt8.Text ='' then
begin
ShowMessage('TANGGAL TIDAK BOLEH KOSONG!');
end else
begin
DataModule2.ZQuery_semester.SQL.Clear; //simpan
DataModule2.ZQuery_semester.SQL.Add('insert into semester values(null,"'+edt1.Text+'","'+edt2.Text+'","'+edt3.Text+'","'+edt4.Text+'","'+edt5.Text+'","'+edt6.Text+'","'+edt7.Text+'","'+edt8.Text+'")');
DataModule2.ZQuery_semester.ExecSQL ;

DataModule2.ZQuery_semester.SQL.Clear;
DataModule2.ZQuery_semester.SQL.Add('select * from semester');
DataModule2.ZQuery_semester.Open;
ShowMessage('DATA BARHASIL DISIMPAN!');
kondisiawal;
end;

end;

procedure TForm11.btn3Click(Sender: TObject);
begin
if (edt1.Text= '')or (edt2.Text ='')or(edt3.Text= '')or (edt4.Text ='')or (edt5.Text ='')or (edt6.Text= '')or(edt7.Text= '')or(edt8.Text= '') then
begin
ShowMessage('INPUTAN WAJIB DIISI!');
kondisiawal;
end else
begin
ShowMessage('DATA BERHASIL DIUPDATE!'); //UPDATE
DataModule2.ZQuery_semester.SQL.Clear;
DataModule2.ZQuery_semester.SQL.Add('Update semester set siswa_id="'+edt1.Text+'",poin_id="'+edt2.Text+'",wali_id="'+edt3.Text+'",ortu_id="'+edt4.Text+'",kelas_id="'+edt5.Text+'",tanggal="'+edt6.Text+'",semester="'+edt7.Text+'",status="'+edt8.Text+'" where id="'+id+'"');
DataModule2.ZQuery_semester. ExecSQL;

DataModule2.ZQuery_semester.SQL.Clear;
DataModule2.ZQuery_semester.SQL.Add('select * from semester');
DataModule2.ZQuery_semester.Open;
kondisiawal;
end;

end;

procedure TForm11.btn4Click(Sender: TObject);
begin
if MessageDlg('APAKAH YAKIN MENGHAPUS DATA INI?',mtWarning,[mbYes,mbNo],0)= mryes then
begin
DataModule2.ZQuery_semester.SQL.Clear;
DataModule2.ZQuery_semester.SQL.Add(' delete from semester where id="'+id+'"');
DataModule2.ZQuery_semester. ExecSQL;
DataModule2.ZQuery_semester.SQL.Clear;
DataModule2.ZQuery_semester.SQL.Add('select * from semester');
DataModule2.ZQuery_semester.Open;
ShowMessage('DATA BERHASIL DIHAPUS');
kondisiawal;
end else
begin
 ShowMessage('DATA BATAL DIHAPUS');
kondisiawal;
end;
end;

procedure TForm11.btn5Click(Sender: TObject);
begin
kondisiawal;
end;

procedure TForm11.btn6Click(Sender: TObject);
begin
frxrprt8.ShowReport;
end;

end.
