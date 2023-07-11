object Form9: TForm9
  Left = 240
  Top = 130
  Width = 928
  Height = 480
  Caption = 'Form9'
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
    Top = 48
    Width = 62
    Height = 13
    Caption = 'NAMA KELAS'
  end
  object lbl2: TLabel
    Left = 56
    Top = 80
    Width = 46
    Height = 13
    Caption = 'JURUSAN'
  end
  object edt1: TEdit
    Left = 184
    Top = 48
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object edt2: TEdit
    Left = 184
    Top = 80
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object btn1: TButton
    Left = 8
    Top = 128
    Width = 75
    Height = 25
    Caption = 'BARU'
    TabOrder = 2
    OnClick = btn1Click
  end
  object btn2: TButton
    Left = 104
    Top = 128
    Width = 75
    Height = 25
    Caption = 'SIMPAN'
    TabOrder = 3
    OnClick = btn2Click
  end
  object btn3: TButton
    Left = 200
    Top = 128
    Width = 75
    Height = 25
    Caption = 'EDIT'
    TabOrder = 4
    OnClick = btn3Click
  end
  object btn4: TButton
    Left = 296
    Top = 128
    Width = 75
    Height = 25
    Caption = 'HAPUS'
    TabOrder = 5
    OnClick = btn4Click
  end
  object btn5: TButton
    Left = 392
    Top = 128
    Width = 75
    Height = 25
    Caption = 'BATAL'
    TabOrder = 6
    OnClick = btn5Click
  end
  object dbgrd1: TDBGrid
    Left = 8
    Top = 160
    Width = 553
    Height = 281
    DataSource = ds6
    TabOrder = 7
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = dbgrd1CellClick
  end
  object btn6: TButton
    Left = 488
    Top = 128
    Width = 75
    Height = 25
    Caption = 'CETAK'
    TabOrder = 8
    OnClick = btn6Click
  end
  object ds6: TDataSource
    DataSet = DataModule2.ZQuery_kelas
    Left = 392
    Top = 32
  end
  object frxdbdtst6: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    DataSet = DataModule2.ZQuery_kelas
    BCDToCurrency = False
    Left = 336
    Top = 32
  end
  object frxrprt6: TfrxReport
    Version = '4.12.6'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 45116.061010173600000000
    ReportOptions.LastChange = 45116.063528090300000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 336
    Top = 80
    Datasets = <
      item
        DataSet = frxdbdtst6
        DataSetName = 'frxDBDataset1'
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
        Height = 60.472480000000000000
        Top = 18.897650000000000000
        Width = 740.409927000000000000
        object Memo21: TfrxMemoView
          Left = 207.874150000000000000
          Top = 7.559060000000000000
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
            'DAFTAR KELAS')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 52.913420000000000000
        Top = 102.047310000000000000
        Width = 740.409927000000000000
        object Memo1: TfrxMemoView
          Left = 154.960730000000000000
          Width = 37.795300000000000000
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
          Left = 192.756030000000000000
          Width = 41.574830000000000000
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
          Left = 234.330860000000000000
          Width = 166.299320000000000000
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
            'NAMA KELAS')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo4: TfrxMemoView
          Left = 400.630180000000000000
          Width = 166.299320000000000000
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
            'JURUSAN')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object MasterData1: TfrxMasterData
        Height = 52.913420000000000000
        Top = 215.433210000000000000
        Width = 740.409927000000000000
        DataSet = frxdbdtst6
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object Memo5: TfrxMemoView
          Left = 154.960730000000000000
          Width = 37.795300000000000000
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
        object Memo6: TfrxMemoView
          Left = 192.756030000000000000
          Width = 41.574830000000000000
          Height = 52.913420000000000000
          ShowHint = False
          DataField = 'id'
          DataSet = frxdbdtst6
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset1."id"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          Left = 234.330860000000000000
          Width = 166.299320000000000000
          Height = 52.913420000000000000
          ShowHint = False
          DataField = 'nama'
          DataSet = frxdbdtst6
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset1."nama"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo8: TfrxMemoView
          Left = 400.630180000000000000
          Width = 166.299320000000000000
          Height = 52.913420000000000000
          ShowHint = False
          DataField = 'jurusan'
          DataSet = frxdbdtst6
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset1."jurusan"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
    end
  end
end
