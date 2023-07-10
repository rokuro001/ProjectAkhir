object Form1: TForm1
  Left = 258
  Top = 147
  Width = 928
  Height = 480
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lbl1: TLabel
    Left = 104
    Top = 40
    Width = 54
    Height = 13
    Caption = 'USERNAME'
  end
  object lbl2: TLabel
    Left = 104
    Top = 80
    Width = 57
    Height = 13
    Caption = 'PASSWORD'
  end
  object Edit1: TEdit
    Left = 168
    Top = 40
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 168
    Top = 80
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object btn1: TButton
    Left = 168
    Top = 112
    Width = 75
    Height = 25
    Caption = 'LOGIN'
    TabOrder = 2
    OnClick = btn1Click
  end
  object ds: TDataSource
    DataSet = DataModule2.ZQuery_user
    Left = 32
    Top = 40
  end
end
