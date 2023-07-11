object Form12: TForm12
  Left = 274
  Top = 115
  Width = 928
  Height = 480
  Caption = 'Form12'
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
    Top = 32
    Width = 54
    Height = 13
    Caption = 'USERNAME'
  end
  object lbl2: TLabel
    Left = 56
    Top = 64
    Width = 57
    Height = 13
    Caption = 'PASSWORD'
  end
  object lbl3: TLabel
    Left = 56
    Top = 96
    Width = 91
    Height = 13
    Caption = 'STATUS HUB ANAK'
  end
  object lbl4: TLabel
    Left = 56
    Top = 128
    Width = 28
    Height = 13
    Caption = 'LEVEL'
  end
  object lbl5: TLabel
    Left = 56
    Top = 160
    Width = 38
    Height = 13
    Caption = 'STATUS'
  end
  object lbl6: TLabel
    Left = 304
    Top = 32
    Width = 67
    Height = 13
    Caption = 'DIBUAT PADA'
  end
  object lbl7: TLabel
    Left = 304
    Top = 64
    Width = 40
    Height = 13
    Caption = 'USER ID'
  end
  object lbl8: TLabel
    Left = 304
    Top = 96
    Width = 83
    Height = 13
    Caption = 'DI UPDATE PADA'
  end
  object edt1: TEdit
    Left = 160
    Top = 32
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object edt2: TEdit
    Left = 160
    Top = 64
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object edt3: TEdit
    Left = 160
    Top = 96
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object btn1: TButton
    Left = 24
    Top = 200
    Width = 75
    Height = 25
    Caption = 'BARU'
    TabOrder = 3
    OnClick = btn1Click
  end
  object btn2: TButton
    Left = 120
    Top = 200
    Width = 75
    Height = 25
    Caption = 'SIMPAN'
    TabOrder = 4
    OnClick = btn2Click
  end
  object btn4: TButton
    Left = 312
    Top = 200
    Width = 75
    Height = 25
    Caption = 'HAPUS'
    TabOrder = 5
    OnClick = btn4Click
  end
  object btn5: TButton
    Left = 416
    Top = 200
    Width = 75
    Height = 25
    Caption = 'BATAL'
    TabOrder = 6
    OnClick = btn5Click
  end
  object dbgrd1: TDBGrid
    Left = 24
    Top = 232
    Width = 649
    Height = 297
    DataSource = ds4
    TabOrder = 7
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = dbgrd1CellClick
  end
  object cbb1: TComboBox
    Left = 160
    Top = 128
    Width = 121
    Height = 21
    ItemHeight = 13
    TabOrder = 8
    Items.Strings = (
      'admin'
      'wali kelas')
  end
  object edt4: TEdit
    Left = 160
    Top = 160
    Width = 121
    Height = 21
    TabOrder = 9
  end
  object edt5: TEdit
    Left = 400
    Top = 32
    Width = 121
    Height = 21
    TabOrder = 10
  end
  object btn3: TButton
    Left = 216
    Top = 200
    Width = 75
    Height = 25
    Caption = 'EDIT'
    TabOrder = 11
    OnClick = btn3Click
  end
  object edt6: TEdit
    Left = 400
    Top = 64
    Width = 121
    Height = 21
    TabOrder = 12
  end
  object edt7: TEdit
    Left = 400
    Top = 96
    Width = 121
    Height = 21
    TabOrder = 13
  end
  object btn6: TButton
    Left = 504
    Top = 200
    Width = 75
    Height = 25
    Caption = 'CETAK'
    TabOrder = 14
    OnClick = btn6Click
  end
  object ds4: TDataSource
    DataSet = DataModule2.ZQuery_user
    Left = 16
    Top = 24
  end
  object frxdbdtst4: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    DataSet = DataModule2.ZQuery_user
    BCDToCurrency = False
    Left = 16
    Top = 120
  end
  object frxrprt4: TfrxReport
    Version = '4.12.6'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 45116.047012280100000000
    ReportOptions.LastChange = 45116.051069317130000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 16
    Top = 168
    Datasets = <
      item
        DataSet = frxdbdtst4
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
        Height = 56.692950000000000000
        Top = 18.897650000000000000
        Width = 740.409927000000000000
        object Memo21: TfrxMemoView
          Left = 219.212740000000000000
          Top = 11.338590000000000000
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
            'DAFTAR USER')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 52.913420000000000000
        Top = 98.267780000000000000
        Width = 740.409927000000000000
        object Memo1: TfrxMemoView
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
          Left = 37.795300000000000000
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
          Left = 79.370130000000000000
          Width = 113.385900000000000000
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
            'USERNAME')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo4: TfrxMemoView
          Left = 192.756030000000000000
          Width = 94.488250000000000000
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
            'PASSWORD')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo6: TfrxMemoView
          Left = 287.244280000000000000
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
            'LEVEL')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          Left = 377.953000000000000000
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
            'STATUS')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo8: TfrxMemoView
          Left = 453.543600000000000000
          Width = 109.606370000000000000
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
            'CREATE AT')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo9: TfrxMemoView
          Left = 563.149970000000000000
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
            'USER ID')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo10: TfrxMemoView
          Left = 631.181510000000000000
          Width = 109.606370000000000000
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
            'UPDATE AT')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object MasterData1: TfrxMasterData
        Height = 52.913420000000000000
        Top = 211.653680000000000000
        Width = 740.409927000000000000
        DataSet = frxdbdtst4
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object Memo5: TfrxMemoView
          Width = 37.795300000000000000
          Height = 52.913420000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[line]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo11: TfrxMemoView
          Left = 37.795300000000000000
          Width = 41.574830000000000000
          Height = 52.913420000000000000
          ShowHint = False
          DataField = 'id'
          DataSet = frxdbdtst4
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset1."id"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo12: TfrxMemoView
          Left = 79.370130000000000000
          Width = 113.385900000000000000
          Height = 52.913420000000000000
          ShowHint = False
          DataField = 'username'
          DataSet = frxdbdtst4
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset1."username"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo13: TfrxMemoView
          Left = 192.756030000000000000
          Width = 94.488250000000000000
          Height = 52.913420000000000000
          ShowHint = False
          DataField = 'password'
          DataSet = frxdbdtst4
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset1."password"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo14: TfrxMemoView
          Left = 287.244280000000000000
          Width = 90.708720000000000000
          Height = 52.913420000000000000
          ShowHint = False
          DataField = 'level'
          DataSet = frxdbdtst4
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset1."level"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo15: TfrxMemoView
          Left = 377.953000000000000000
          Width = 75.590600000000000000
          Height = 52.913420000000000000
          ShowHint = False
          DataField = 'status'
          DataSet = frxdbdtst4
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset1."status"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo16: TfrxMemoView
          Left = 453.543600000000000000
          Width = 109.606370000000000000
          Height = 52.913420000000000000
          ShowHint = False
          DataField = 'created_at'
          DataSet = frxdbdtst4
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset1."created_at"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo17: TfrxMemoView
          Left = 563.149970000000000000
          Width = 68.031540000000000000
          Height = 52.913420000000000000
          ShowHint = False
          DataField = 'created_userid'
          DataSet = frxdbdtst4
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset1."created_userid"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo18: TfrxMemoView
          Left = 631.181510000000000000
          Width = 109.606370000000000000
          Height = 52.913420000000000000
          ShowHint = False
          DataField = 'update_at'
          DataSet = frxdbdtst4
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset1."update_at"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
    end
  end
end
