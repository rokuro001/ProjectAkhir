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
  object lbl1: TLabel
    Left = 56
    Top = 16
    Width = 17
    Height = 13
    Caption = 'NIS'
  end
  object lbl2: TLabel
    Left = 56
    Top = 56
    Width = 24
    Height = 13
    Caption = 'NISN'
  end
  object lbl3: TLabel
    Left = 56
    Top = 96
    Width = 29
    Height = 13
    Caption = 'NAMA'
  end
  object lbl4: TLabel
    Left = 56
    Top = 136
    Width = 17
    Height = 13
    Caption = 'NIK'
  end
  object lbl5: TLabel
    Left = 56
    Top = 176
    Width = 72
    Height = 13
    Caption = 'TEMPAT LAHIR'
  end
  object lbl6: TLabel
    Left = 56
    Top = 208
    Width = 79
    Height = 13
    Caption = 'TANGGAL LAHIR'
  end
  object lbl7: TLabel
    Left = 288
    Top = 16
    Width = 74
    Height = 13
    Caption = 'JENIS KELAMIN'
  end
  object lbl8: TLabel
    Left = 288
    Top = 48
    Width = 40
    Height = 13
    Caption = 'ALAMAT'
  end
  object lbl9: TLabel
    Left = 288
    Top = 88
    Width = 56
    Height = 13
    Caption = 'NO TELPON'
  end
  object lbl10: TLabel
    Left = 288
    Top = 120
    Width = 31
    Height = 13
    Caption = 'NO HP'
  end
  object lbl11: TLabel
    Left = 288
    Top = 152
    Width = 38
    Height = 13
    Caption = 'STATUS'
  end
  object edt1: TEdit
    Left = 144
    Top = 16
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object edt2: TEdit
    Left = 144
    Top = 56
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object edt3: TEdit
    Left = 144
    Top = 96
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object edt4: TEdit
    Left = 144
    Top = 136
    Width = 121
    Height = 21
    TabOrder = 3
  end
  object edt5: TEdit
    Left = 144
    Top = 176
    Width = 121
    Height = 21
    TabOrder = 4
  end
  object edt6: TEdit
    Left = 144
    Top = 208
    Width = 121
    Height = 21
    TabOrder = 5
  end
  object cbb1: TComboBox
    Left = 376
    Top = 16
    Width = 145
    Height = 21
    ItemHeight = 13
    TabOrder = 6
    Items.Strings = (
      'L'
      'P')
  end
  object edt7: TEdit
    Left = 376
    Top = 48
    Width = 145
    Height = 21
    TabOrder = 7
  end
  object edt8: TEdit
    Left = 376
    Top = 88
    Width = 145
    Height = 21
    TabOrder = 8
  end
  object edt9: TEdit
    Left = 376
    Top = 120
    Width = 145
    Height = 21
    TabOrder = 9
  end
  object edt10: TEdit
    Left = 376
    Top = 152
    Width = 145
    Height = 21
    TabOrder = 10
  end
  object btn1: TButton
    Left = 40
    Top = 240
    Width = 75
    Height = 25
    Caption = 'BARU'
    TabOrder = 11
    OnClick = btn1Click
  end
  object btn2: TButton
    Left = 128
    Top = 240
    Width = 75
    Height = 25
    Caption = 'SIMPAN'
    TabOrder = 12
    OnClick = btn2Click
  end
  object btn3: TButton
    Left = 216
    Top = 240
    Width = 75
    Height = 25
    Caption = 'EDIT'
    TabOrder = 13
    OnClick = btn3Click
  end
  object btn4: TButton
    Left = 304
    Top = 240
    Width = 75
    Height = 25
    Caption = 'HAPUS'
    TabOrder = 14
  end
  object btn5: TButton
    Left = 392
    Top = 240
    Width = 75
    Height = 25
    Caption = 'BATAL'
    TabOrder = 15
    OnClick = btn5Click
  end
  object dbgrd1: TDBGrid
    Left = 16
    Top = 272
    Width = 561
    Height = 169
    DataSource = ds1
    TabOrder = 16
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object btn6: TButton
    Left = 480
    Top = 240
    Width = 75
    Height = 25
    Caption = 'CETAK'
    TabOrder = 17
    OnClick = btn6Click
  end
  object ds1: TDataSource
    DataSet = DataModule2.ZQuery_siswa
    Left = 8
    Top = 88
  end
  object frxdbdtst2: TfrxDBDataset
    UserName = 'frxDBDataset2'
    CloseDataSource = False
    DataSet = DataModule2.ZQuery_siswa
    BCDToCurrency = False
    Left = 16
    Top = 152
  end
  object frxrprt2: TfrxReport
    Version = '4.12.6'
    DataSet = frxdbdtst2
    DataSetName = 'frxDBDataset2'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 45116.022568101800000000
    ReportOptions.LastChange = 45116.035349317130000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 16
    Top = 216
    Datasets = <
      item
        DataSet = frxdbdtst2
        DataSetName = 'frxDBDataset2'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 215.900000000000000000
      PaperHeight = 279.400000000000000000
      PaperSize = 1
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object ReportTitle1: TfrxReportTitle
        Height = 52.913420000000000000
        Top = 18.897650000000000000
        Width = 740.409927000000000000
        object Memo21: TfrxMemoView
          Left = 215.433210000000000000
          Width = 302.362400000000000000
          Height = 30.236240000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'TImes New Roman'
          Font.Style = [fsBold]
          Frame.Typ = [ftBottom]
          Frame.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'DAFTAR SISWA')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 60.472480000000000000
        Top = 94.488250000000000000
        Width = 740.409927000000000000
        object Memo1: TfrxMemoView
          Top = 7.559060000000000000
          Width = 26.456710000000000000
          Height = 52.913420000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'NO')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo2: TfrxMemoView
          Left = 26.456710000000000000
          Top = 7.559060000000000000
          Width = 34.015770000000000000
          Height = 52.913420000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'ID')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo3: TfrxMemoView
          Left = 60.472480000000000000
          Top = 7.559060000000000000
          Width = 49.133890000000000000
          Height = 52.913420000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'NIS')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo4: TfrxMemoView
          Left = 109.606370000000000000
          Top = 7.559060000000000000
          Width = 49.133890000000000000
          Height = 52.913420000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'NISN')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo5: TfrxMemoView
          Left = 158.740260000000000000
          Top = 7.559060000000000000
          Width = 90.708720000000000000
          Height = 52.913420000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'NAMA')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo6: TfrxMemoView
          Left = 249.448980000000000000
          Top = 7.559060000000000000
          Width = 68.031540000000000000
          Height = 52.913420000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'NIK')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          Left = 317.480520000000000000
          Top = 7.559060000000000000
          Width = 75.590600000000000000
          Height = 52.913420000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'TEMPAT'
            'LAHIR')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo8: TfrxMemoView
          Left = 393.071120000000000000
          Top = 7.559060000000000000
          Width = 86.929190000000000000
          Height = 52.913420000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'TANGGAL'
            'LAHIR')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo9: TfrxMemoView
          Left = 480.000310000000000000
          Top = 7.559060000000000000
          Width = 68.031540000000000000
          Height = 52.913420000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'JENIS'
            'KELAMIN')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo10: TfrxMemoView
          Left = 548.031850000000000000
          Top = 7.559060000000000000
          Width = 64.252010000000000000
          Height = 52.913420000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'ALAMAT')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo22: TfrxMemoView
          Left = 612.283860000000000000
          Top = 7.559060000000000000
          Width = 64.252010000000000000
          Height = 52.913420000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'NO'
            'TELP')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo23: TfrxMemoView
          Left = 676.535870000000000000
          Top = 7.559060000000000000
          Width = 64.252010000000000000
          Height = 52.913420000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'NO '
            'HP')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object MasterData1: TfrxMasterData
        Height = 52.913420000000000000
        Top = 215.433210000000000000
        Width = 740.409927000000000000
        DataSet = frxdbdtst2
        DataSetName = 'frxDBDataset2'
        RowCount = 0
        object Memo11: TfrxMemoView
          Width = 26.456710000000000000
          Height = 52.913420000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            '[line]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo12: TfrxMemoView
          Left = 26.456710000000000000
          Width = 34.015770000000000000
          Height = 52.913420000000000000
          ShowHint = False
          DataField = 'id'
          DataSet = frxdbdtst2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset2."id"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo13: TfrxMemoView
          Left = 60.472480000000000000
          Width = 49.133890000000000000
          Height = 52.913420000000000000
          ShowHint = False
          DataField = 'nis'
          DataSet = frxdbdtst2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset2."nis"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo14: TfrxMemoView
          Left = 109.606370000000000000
          Width = 49.133890000000000000
          Height = 52.913420000000000000
          ShowHint = False
          DataField = 'nisn'
          DataSet = frxdbdtst2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset2."nisn"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo15: TfrxMemoView
          Left = 158.740260000000000000
          Width = 90.708720000000000000
          Height = 52.913420000000000000
          ShowHint = False
          DataField = 'nama_siswa'
          DataSet = frxdbdtst2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset2."nama_siswa"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo16: TfrxMemoView
          Left = 249.448980000000000000
          Width = 68.031540000000000000
          Height = 52.913420000000000000
          ShowHint = False
          DataField = 'nik'
          DataSet = frxdbdtst2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset2."nik"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo17: TfrxMemoView
          Left = 317.480520000000000000
          Width = 75.590600000000000000
          Height = 52.913420000000000000
          ShowHint = False
          DataField = 'tempat_lahir'
          DataSet = frxdbdtst2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset2."tempat_lahir"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo18: TfrxMemoView
          Left = 393.071120000000000000
          Width = 86.929190000000000000
          Height = 52.913420000000000000
          ShowHint = False
          DataField = 'tanggal_lahir'
          DataSet = frxdbdtst2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset2."tanggal_lahir"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo19: TfrxMemoView
          Left = 480.000310000000000000
          Width = 68.031540000000000000
          Height = 52.913420000000000000
          ShowHint = False
          DataField = 'jk'
          DataSet = frxdbdtst2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset2."jk"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo20: TfrxMemoView
          Left = 548.031850000000000000
          Width = 64.252010000000000000
          Height = 52.913420000000000000
          ShowHint = False
          DataField = 'alamat'
          DataSet = frxdbdtst2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset2."alamat"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo24: TfrxMemoView
          Left = 612.283860000000000000
          Width = 64.252010000000000000
          Height = 52.913420000000000000
          ShowHint = False
          DataField = 'telp'
          DataSet = frxdbdtst2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset2."telp"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo25: TfrxMemoView
          Left = 676.535870000000000000
          Width = 64.252010000000000000
          Height = 52.913420000000000000
          ShowHint = False
          DataField = 'hp'
          DataSet = frxdbdtst2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset2."hp"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
    end
  end
end
