object Form3: TForm3
  Left = 192
  Top = 125
  Width = 928
  Height = 480
  Caption = 'Data Siswa'
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
    Left = 136
    Top = 24
    Width = 19
    Height = 18
    Caption = 'Nis'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 136
    Top = 56
    Width = 27
    Height = 18
    Caption = 'Nisn'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 136
    Top = 80
    Width = 39
    Height = 18
    Caption = 'Nama'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 136
    Top = 112
    Width = 19
    Height = 18
    Caption = 'Nik'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel
    Left = 128
    Top = 136
    Width = 87
    Height = 18
    Caption = 'Tempat Lahir'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label6: TLabel
    Left = 128
    Top = 176
    Width = 87
    Height = 18
    Caption = 'Tanggal Lahir'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label7: TLabel
    Left = 464
    Top = 16
    Width = 86
    Height = 18
    Caption = 'Jenis Kelamin'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label8: TLabel
    Left = 472
    Top = 48
    Width = 45
    Height = 18
    Caption = 'Alamat'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label9: TLabel
    Left = 472
    Top = 80
    Width = 44
    Height = 18
    Caption = 'Telpon'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label10: TLabel
    Left = 472
    Top = 120
    Width = 18
    Height = 18
    Caption = 'HP'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label11: TLabel
    Left = 472
    Top = 152
    Width = 41
    Height = 18
    Caption = 'Status'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object DBGrid1: TDBGrid
    Left = 32
    Top = 296
    Width = 753
    Height = 145
    DataSource = DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object Edit1: TEdit
    Left = 248
    Top = 16
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object Edit2: TEdit
    Left = 248
    Top = 48
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object Edit3: TEdit
    Left = 248
    Top = 80
    Width = 121
    Height = 21
    TabOrder = 3
  end
  object Edit4: TEdit
    Left = 248
    Top = 112
    Width = 121
    Height = 21
    TabOrder = 4
  end
  object Edit5: TEdit
    Left = 248
    Top = 144
    Width = 121
    Height = 21
    TabOrder = 5
  end
  object Edit6: TEdit
    Left = 248
    Top = 176
    Width = 121
    Height = 21
    TabOrder = 6
  end
  object Edit7: TEdit
    Left = 584
    Top = 16
    Width = 121
    Height = 21
    TabOrder = 7
  end
  object Edit8: TEdit
    Left = 584
    Top = 48
    Width = 121
    Height = 21
    TabOrder = 8
  end
  object Edit9: TEdit
    Left = 584
    Top = 80
    Width = 121
    Height = 21
    TabOrder = 9
  end
  object Edit10: TEdit
    Left = 584
    Top = 120
    Width = 121
    Height = 21
    TabOrder = 10
  end
  object Edit11: TEdit
    Left = 584
    Top = 152
    Width = 121
    Height = 21
    TabOrder = 11
  end
  object Button1: TButton
    Left = 88
    Top = 248
    Width = 75
    Height = 25
    Caption = 'Baru'
    TabOrder = 12
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 216
    Top = 248
    Width = 75
    Height = 25
    Caption = 'Simpan'
    TabOrder = 13
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 336
    Top = 248
    Width = 75
    Height = 25
    Caption = 'Edit'
    TabOrder = 14
  end
  object Button4: TButton
    Left = 448
    Top = 248
    Width = 75
    Height = 25
    Caption = 'Hapus'
    TabOrder = 15
  end
  object Button5: TButton
    Left = 552
    Top = 248
    Width = 75
    Height = 25
    Caption = 'Batal'
    TabOrder = 16
  end
  object Button6: TButton
    Left = 672
    Top = 248
    Width = 75
    Height = 25
    Caption = 'Keluar'
    TabOrder = 17
  end
  object DataSource1: TDataSource
    DataSet = DataModule2.ZQuery_siswa
    Left = 40
    Top = 24
  end
end
