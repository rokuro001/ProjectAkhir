object Form4: TForm4
  Left = 192
  Top = 125
  Width = 928
  Height = 480
  Caption = 'MenuWakel'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = mm1
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object mm1: TMainMenu
    Left = 40
    Top = 24
    object mniMENU1: TMenuItem
      Caption = 'MENU'
      object mniSISWA1: TMenuItem
        Caption = 'SISWA'
        OnClick = mniSISWA1Click
      end
      object mniSEMESTER1: TMenuItem
        Caption = 'ORANG TUA'
        OnClick = mniSEMESTER1Click
      end
      object mniORANGTUA1: TMenuItem
        Caption = 'HUBUNGAN'
        OnClick = mniORANGTUA1Click
      end
      object mniSEMESTER2: TMenuItem
        Caption = 'SEMESTER'
        OnClick = mniSEMESTER2Click
      end
    end
  end
end
