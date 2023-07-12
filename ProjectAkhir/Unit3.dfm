object Form3: TForm3
  Left = 177
  Top = 70
  Width = 623
  Height = 335
  Caption = 'Menu'
  Color = clTeal
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = mm1
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object mm1: TMainMenu
    Left = 32
    Top = 16
    object mniWALIKELAS1: TMenuItem
      Caption = 'MENU'
      object mniWALIKELAS2: TMenuItem
        Caption = 'WALI KELAS'
        OnClick = mniWALIKELAS2Click
      end
      object mniSISWA1: TMenuItem
        Caption = 'SISWA'
        OnClick = mniSISWA1Click
      end
      object mniKELAS1: TMenuItem
        Caption = 'KELAS'
        OnClick = mniKELAS1Click
      end
      object mniORANGTUA1: TMenuItem
        Caption = 'ORANG TUA'
        OnClick = mniORANGTUA1Click
      end
      object mniHUBUNGAN1: TMenuItem
        Caption = 'HUBUNGAN'
        OnClick = mniHUBUNGAN1Click
      end
      object mniSEMESTER1: TMenuItem
        Caption = 'SEMESTER'
        OnClick = mniSEMESTER1Click
      end
      object mniPOIN1: TMenuItem
        Caption = 'POIN'
        OnClick = mniPOIN1Click
      end
    end
  end
end
