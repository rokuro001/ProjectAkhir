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
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation

uses
  Unit2;

{$R *.dfm}

end.
