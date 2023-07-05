object Form5: TForm5
  Left = 192
  Top = 125
  Width = 928
  Height = 480
  Caption = 'Form5'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 248
    Top = 136
    Width = 31
    Height = 13
    Caption = 'Label1'
  end
  object Label2: TLabel
    Left = 240
    Top = 216
    Width = 65
    Height = 17
    Caption = 'Label2'
  end
  object Label3: TLabel
    Left = 232
    Top = 192
    Width = 65
    Height = 17
    Caption = 'Label3'
  end
  object Label4: TLabel
    Left = 240
    Top = 232
    Width = 31
    Height = 13
    Caption = 'Label4'
  end
  object Edit1: TEdit
    Left = 384
    Top = 104
    Width = 121
    Height = 21
    TabOrder = 0
    Text = 'Edit1'
  end
  object Edit2: TEdit
    Left = 528
    Top = 256
    Width = 121
    Height = 21
    TabOrder = 1
    Text = 'Edit2'
  end
  object Edit3: TEdit
    Left = 408
    Top = 208
    Width = 65
    Height = 21
    TabOrder = 2
    Text = 'Edit3'
  end
  object DataSource1: TDataSource
    DataSet = DataModule2.ZQuery1_wali_kelas
    Left = 104
    Top = 144
  end
end
