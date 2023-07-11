unit Unit10;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frxClass, frxDBSet, DB, ZAbstractRODataset, ZAbstractDataset,
  ZDataset, Grids, DBGrids, StdCtrls;

type
  TForm10 = class(TForm)
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
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
    edt3: TEdit;
    edt4: TEdit;
    edt5: TEdit;
    btn6: TButton;
    ds7: TDataSource;
    frxrprt7: TfrxReport;
    frxdbdtst7: TfrxDBDataset;
    procedure bersih;
    procedure hidup;
    procedure kondisiawal;
    procedure btn2Click(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure dbgrd1CellClick(Column: TColumn);
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
  Form10: TForm10;
  siswa:string;
  id:string;

implementation

uses
  Unit2;

{$R *.dfm}

procedure TForm10.btn2Click(Sender: TObject);
begin
siswa:= DataModule2.ZQuery_hubungan.Fields[1].AsString;

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
ShowMessage('ID ORTU TIDAK BOLEH KOSONG!');
end else
if edt2.Text ='' then
begin
ShowMessage('STATUS HUB TIDAK BOLEH KOSONG!');
end else
if edt3.Text ='' then
begin
ShowMessage('KETERANGAN TIDAK BOLEH KOSONG!');
end else
if edt4.Text ='' then
begin
ShowMessage('STATUS ORTU TIDAK BOLEH KOSONG!');
end else
begin
DataModule2.ZQuery_hubungan.SQL.Clear; //simpan
DataModule2.ZQuery_hubungan.SQL.Add('insert into hubungan values(null,"'+edt1.Text+'","'+edt2.Text+'","'+edt3.Text+'","'+edt4.Text+'","'+edt5.Text+'")');
DataModule2.ZQuery_hubungan.ExecSQL ;

DataModule2.ZQuery_hubungan.SQL.Clear;
DataModule2.ZQuery_hubungan.SQL.Add('select * from hubungan');
DataModule2.ZQuery_hubungan.Open;
ShowMessage('DATA BARHASIL DISIMPAN!');
kondisiawal;
end;

end;

procedure TForm10.btn1Click(Sender: TObject);
begin
  bersih;
  btn1.Enabled:= False;
  btn2.Enabled:= True;
  btn3.Enabled:= False;
  btn4.Enabled:= False;
  btn5.Enabled:= True;
  hidup;

end;

procedure TForm10.dbgrd1CellClick(Column: TColumn);
begin
 id:= DataModule2.ZQuery_hubungan.Fields[0].AsString; // DBGrid
edt1.Text:= DataModule2.ZQuery_hubungan.Fields[1].AsString;
edt2.Text:= DataModule2.ZQuery_hubungan.Fields[2].AsString;
edt3.Text:= DataModule2.ZQuery_hubungan.Fields[3].AsString;
edt4.Text:= DataModule2.ZQuery_hubungan.Fields[4].AsString;
edt5.Text:= DataModule2.ZQuery_hubungan.Fields[5].AsString;
hidup;

btn1.Enabled:= false;
btn2.Enabled:= False;
btn3.Enabled:= True;
btn4.Enabled:= True;
btn5.Enabled:= True;

end;

procedure TForm10.btn3Click(Sender: TObject);
begin
  if (edt1.Text= '')or (edt2.Text ='')or (edt3.Text ='')or (edt4.Text ='')or (edt5.Text ='') then
begin
ShowMessage('INPUTAN WAJIB DIISI!');
kondisiawal;
end else
begin
ShowMessage('DATA BERHASIL DIUPDATE!'); //UPDATE
DataModule2.ZQuery_hubungan.SQL.Clear;
DataModule2.ZQuery_hubungan.SQL.Add('Update hubungan set siswa_id="'+edt1.Text+'",ortu_id="'+edt2.Text+'",statushubanak="'+edt3.Text+'",keterangan="'+edt4.Text+'",status_ortu="'+edt5.Text+'" where id="'+id+'"');
DataModule2.ZQuery_hubungan. ExecSQL;

DataModule2.ZQuery_hubungan.SQL.Clear;
DataModule2.ZQuery_hubungan.SQL.Add('select * from hubungan');
DataModule2.ZQuery_hubungan.Open;
kondisiawal;
end;

end;

procedure TForm10.btn4Click(Sender: TObject);
begin
if MessageDlg('APAKAH YAKIN MENGHAPUS DATA INI?',mtWarning,[mbYes,mbNo],0)= mryes then
begin
DataModule2.ZQuery_hubungan.SQL.Clear;
DataModule2.ZQuery_hubungan.SQL.Add(' delete from hubungan where id="'+id+'"');
DataModule2.ZQuery_hubungan. ExecSQL;
DataModule2.ZQuery_hubungan.SQL.Clear;
DataModule2.ZQuery_hubungan.SQL.Add('select * from tablehubungan');
DataModule2.ZQuery_hubungan.Open;
ShowMessage('DATA BERHASIL DIHAPUS');
kondisiawal;
end else
begin
 ShowMessage('DATA BATAL DIHAPUS');
kondisiawal;
end;

end;

procedure TForm10.btn5Click(Sender: TObject);
begin
kondisiawal;
end;

procedure TForm10.btn6Click(Sender: TObject);
begin
  frxrprt7.ShowReport;
end;

procedure TForm10.bersih;
begin
  edt1.Clear;
  edt2.Clear;
  edt3.Clear;
  edt4.Clear;
  edt5.Clear;

end;

procedure TForm10.hidup;
begin
  edt1.Enabled:= True;
  edt2.Enabled:= True;
  edt3.Enabled:= True;
  edt4.Enabled:= True;
  edt5.Enabled:= True;
end;

procedure TForm10.kondisiawal;
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
end;

end.
