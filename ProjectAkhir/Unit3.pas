unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, DB, Menus;

type
  TForm3 = class(TForm)
    mm1: TMainMenu;
    mniWALIKELAS1: TMenuItem;
    mniWALIKELAS2: TMenuItem;
    mniSISWA1: TMenuItem;
    mniKELAS1: TMenuItem;
    mniORANGTUA1: TMenuItem;
    mniHUBUNGAN1: TMenuItem;
    mniSEMESTER1: TMenuItem;
    mniPOIN1: TMenuItem;
    procedure mniWALIKELAS2Click(Sender: TObject);
    procedure mniSISWA1Click(Sender: TObject);
    procedure mniKELAS1Click(Sender: TObject);
    procedure mniORANGTUA1Click(Sender: TObject);
    procedure mniHUBUNGAN1Click(Sender: TObject);
    procedure mniSEMESTER1Click(Sender: TObject);
    procedure mniPOIN1Click(Sender: TObject);
    procedure DaftarUser1Click(Sender: TObject);
    procedure USER1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

uses Unit7, Unit5, Unit9, Unit6, Unit10, Unit11, Unit8, Unit12;



{$R *.dfm}




procedure TForm3.mniWALIKELAS2Click(Sender: TObject);
begin
  form7.show;
end;

procedure TForm3.mniSISWA1Click(Sender: TObject);
begin
  form5.show;
end;

procedure TForm3.mniKELAS1Click(Sender: TObject);
begin
form9.show;
end;

procedure TForm3.mniORANGTUA1Click(Sender: TObject);
begin
  form6.show;
end;

procedure TForm3.mniHUBUNGAN1Click(Sender: TObject);
begin
form10.show;
end;

procedure TForm3.mniSEMESTER1Click(Sender: TObject);
begin
form11.show;
end;

procedure TForm3.mniPOIN1Click(Sender: TObject);
begin
  form8.show;
end;

procedure TForm3.DaftarUser1Click(Sender: TObject);
begin
  form12.Show;
end;

procedure TForm3.USER1Click(Sender: TObject);
begin
  form12.Show;
end;

end.
