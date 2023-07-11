unit Unit9;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frxClass, frxDBSet, DB, Grids, DBGrids, StdCtrls;

type
  TForm9 = class(TForm)
    lbl1: TLabel;
    lbl2: TLabel;
    edt1: TEdit;
    edt2: TEdit;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    btn4: TButton;
    btn5: TButton;
    dbgrd1: TDBGrid;
    btn6: TButton;
    ds6: TDataSource;
    frxdbdtst6: TfrxDBDataset;
    frxrprt6: TfrxReport;
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
  Form9: TForm9;
   nama:string;
   id:string;

implementation

uses
  Unit2;

{$R *.dfm}

procedure TForm9.bersih;
begin
  edt1.Clear;
  edt2.Clear;
end;


procedure TForm9.hidup;
begin
  edt1.Enabled:= True;
  edt2.Enabled:= True;
end;

procedure TForm9.kondisiawal;
begin
  bersih;

  btn1.Enabled:= True;
  btn2.Enabled:= False;
  btn3.Enabled:= False;
  btn4.Enabled:= False;
  btn5.Enabled:= False;

  edt1.Enabled:= False;
  edt2.Enabled:= False;
end;

procedure TForm9.dbgrd1CellClick(Column: TColumn);
begin
 id:= DataModule2.ZQuery_kelas.Fields[0].AsString; // DBGrid
edt1.Text:= DataModule2.ZQuery_kelas.Fields[1].AsString;
edt2.Text:= DataModule2.ZQuery_kelas.Fields[2].AsString;
hidup;

btn1.Enabled:= false;
btn2.Enabled:= False;
btn3.Enabled:= True;
btn4.Enabled:= True;
btn5.Enabled:= True;

end;

procedure TForm9.btn1Click(Sender: TObject);
begin
  bersih;
  btn1.Enabled:= False;
  btn2.Enabled:= True;
  btn3.Enabled:= False;
  btn4.Enabled:= False;
  btn5.Enabled:= True;
  hidup;

end;

procedure TForm9.btn2Click(Sender: TObject);
begin
if edt1.Text ='' then
begin
ShowMessage('NAMA KELAS TIDAK BOLEH KOSONG!');
end else
if edt2.Text ='' then
begin
ShowMessage('JURUSAN TIDAK BOLEH KOSONG!');
end else
begin
DataModule2.ZQuery_kelas.SQL.Clear; //simpan
DataModule2.ZQuery_kelas.SQL.Add('insert into kelas values(null,"'+edt1.Text+'","'+edt2.Text+'")');
DataModule2.ZQuery_kelas.ExecSQL ;

DataModule2.ZQuery_kelas.SQL.Clear;
DataModule2.ZQuery_kelas.SQL.Add('select * from kelas');
DataModule2.ZQuery_kelas.Open;
ShowMessage('DATA BERHASIL DISIMPAN!');
kondisiawal;
end;

end;

procedure TForm9.btn3Click(Sender: TObject);
begin
  if (edt1.Text= '')or (edt2.Text ='')then
begin
ShowMessage('INPUTAN WAJIB DIISI!');
kondisiawal;
end else
begin
ShowMessage('DATA BERHASIL DIUPDATE!'); //UPDATE
DataModule2.ZQuery_kelas.SQL.Clear;
DataModule2.ZQuery_kelas.SQL.Add('Update kelas set nama="'+edt1.Text+'",jurusan="'+edt2.Text+'" where id="'+id+'"');
DataModule2.ZQuery_kelas. ExecSQL;

DataModule2.ZQuery_kelas.SQL.Clear;
DataModule2.ZQuery_kelas.SQL.Add('select * from kelas');
DataModule2.ZQuery_kelas.Open;
kondisiawal;
end;

end;

procedure TForm9.btn4Click(Sender: TObject);
begin
if MessageDlg('APAKAH YAKIN MENGHAPUS DATA INI?',mtWarning,[mbYes,mbNo],0)= mryes then
begin
DataModule2.ZQuery_kelas.SQL.Clear;
DataModule2.ZQuery_kelas.SQL.Add(' delete from kelas where id="'+id+'"');
DataModule2.ZQuery_kelas. ExecSQL;
DataModule2.ZQuery_kelas.SQL.Clear;
DataModule2.ZQuery_kelas.SQL.Add('select * from kelas');
DataModule2.ZQuery_kelas.Open;
ShowMessage('DATA BERHASIL DIHAPUS');
kondisiawal;
end else
begin
 ShowMessage('DATA BATAL DIHAPUS');
kondisiawal;
end;

end;

procedure TForm9.btn5Click(Sender: TObject);
begin
kondisiawal;
end;

procedure TForm9.btn6Click(Sender: TObject);
begin
frxrprt6.ShowReport;
end;

end.
