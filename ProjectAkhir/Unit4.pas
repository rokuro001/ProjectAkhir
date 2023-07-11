unit Unit4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, Menus;

type
  TForm4 = class(TForm)
    mm1: TMainMenu;
    mniMENU1: TMenuItem;
    mniSISWA1: TMenuItem;
    mniSEMESTER1: TMenuItem;
    mniORANGTUA1: TMenuItem;
    mniSEMESTER2: TMenuItem;
    procedure mniSISWA1Click(Sender: TObject);
    procedure mniSEMESTER1Click(Sender: TObject);
    procedure mniORANGTUA1Click(Sender: TObject);
    procedure mniSEMESTER2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation

uses
  Unit2, Unit5, Unit6, Unit10, Unit11;

{$R *.dfm}

procedure TForm4.mniSISWA1Click(Sender: TObject);
begin
  form5.show;
end;

procedure TForm4.mniSEMESTER1Click(Sender: TObject);
begin
  form6.show;
end;

procedure TForm4.mniORANGTUA1Click(Sender: TObject);
begin
  form10.show;
end;

procedure TForm4.mniSEMESTER2Click(Sender: TObject);
begin
  form11.show;
end;

end.
