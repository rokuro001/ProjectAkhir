object Form7: TForm7
  Left = 329
  Top = 161
  Width = 601
  Height = 589
  Caption = 'Form7'
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
    Top = 24
    Width = 17
    Height = 13
    Caption = 'NIK'
  end
  object lbl2: TLabel
    Left = 56
    Top = 56
    Width = 29
    Height = 13
    Caption = 'NAMA'
  end
  object lbl3: TLabel
    Left = 56
    Top = 88
    Width = 74
    Height = 13
    Caption = 'JENIS KELAMIN'
  end
  object lbl4: TLabel
    Left = 56
    Top = 120
    Width = 61
    Height = 13
    Caption = 'PENDIDIKAN'
  end
  object lbl5: TLabel
    Left = 56
    Top = 152
    Width = 56
    Height = 13
    Caption = 'NO TELPON'
  end
  object lbl6: TLabel
    Left = 56
    Top = 184
    Width = 88
    Height = 13
    Caption = 'MATA PELAJARAN'
  end
  object lbl7: TLabel
    Left = 56
    Top = 216
    Width = 40
    Height = 13
    Caption = 'ALAMAT'
  end
  object lbl8: TLabel
    Left = 56
    Top = 248
    Width = 38
    Height = 13
    Caption = 'STATUS'
  end
  object edt1: TEdit
    Left = 184
    Top = 24
    Width = 305
    Height = 21
    TabOrder = 0
  end
  object edt2: TEdit
    Left = 184
    Top = 56
    Width = 305
    Height = 21
    TabOrder = 1
  end
  object cbb1: TComboBox
    Left = 184
    Top = 88
    Width = 305
    Height = 21
    ItemHeight = 13
    TabOrder = 2
    Items.Strings = (
      'P'
      'L')
  end
  object edt3: TEdit
    Left = 184
    Top = 120
    Width = 305
    Height = 21
    TabOrder = 3
  end
  object edt4: TEdit
    Left = 184
    Top = 152
    Width = 305
    Height = 21
    TabOrder = 4
  end
  object edt5: TEdit
    Left = 184
    Top = 184
    Width = 305
    Height = 21
    TabOrder = 5
  end
  object edt6: TEdit
    Left = 184
    Top = 216
    Width = 305
    Height = 21
    TabOrder = 6
  end
  object btn1: TButton
    Left = 8
    Top = 296
    Width = 75
    Height = 25
    Caption = 'BARU'
    TabOrder = 7
    OnClick = btn1Click
  end
  object btn2: TButton
    Left = 104
    Top = 296
    Width = 75
    Height = 25
    Caption = 'SIMPAN'
    TabOrder = 8
    OnClick = btn2Click
  end
  object btn3: TButton
    Left = 200
    Top = 296
    Width = 75
    Height = 25
    Caption = 'EDIT'
    TabOrder = 9
    OnClick = btn3Click
  end
  object btn4: TButton
    Left = 296
    Top = 296
    Width = 75
    Height = 25
    Caption = 'HAPUS'
    TabOrder = 10
    OnClick = btn4Click
  end
  object btn5: TButton
    Left = 392
    Top = 296
    Width = 75
    Height = 25
    Caption = 'BATAL'
    TabOrder = 11
    OnClick = btn5Click
  end
  object dbgrd1: TDBGrid
    Left = 8
    Top = 328
    Width = 553
    Height = 209
    DataSource = ds1
    TabOrder = 12
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = dbgrd1CellClick
  end
  object edt8: TEdit
    Left = 184
    Top = 248
    Width = 305
    Height = 21
    TabOrder = 13
  end
  object btn6: TButton
    Left = 488
    Top = 296
    Width = 75
    Height = 25
    Caption = 'CETAK'
    TabOrder = 14
    OnClick = btn6Click
  end
  object ds1: TDataSource
    DataSet = DataModule2.ZQuery_wali_kelas
    Left = 16
    Top = 24
  end
  object frxdbdtst1: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    DataSet = DataModule2.ZQuery_wali_kelas
    BCDToCurrency = False
    Left = 16
    Top = 80
  end
  object frxrprt1: TfrxReport
    Version = '4.12.6'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 45115.983179942100000000
    ReportOptions.LastChange = 45115.999375277780000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 16
    Top = 128
    Datasets = <
      item
        DataSet = frxdbdtst1
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
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'TImes New Roman'
        Font.Style = []
        Height = 22.677180000000000000
        ParentFont = False
        Top = 18.897650000000000000
        Width = 740.409927000000000000
      end
      object MasterData1: TfrxMasterData
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'TImes New Roman'
        Font.Style = []
        Height = 52.913420000000000000
        ParentFont = False
        Top = 177.637910000000000000
        Width = 740.409927000000000000
        DataSet = frxdbdtst1
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object Memo11: TfrxMemoView
          Top = 30.236240000000000000
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
        object Memo12: TfrxMemoView
          Left = 37.795300000000000000
          Top = 30.236240000000000000
          Width = 49.133890000000000000
          Height = 52.913420000000000000
          ShowHint = False
          DataField = 'id'
          DataSet = frxdbdtst1
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
        object Memo13: TfrxMemoView
          Left = 86.929190000000000000
          Top = 30.236240000000000000
          Width = 49.133890000000000000
          Height = 52.913420000000000000
          ShowHint = False
          DataField = 'nik'
          DataSet = frxdbdtst1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset1."nik"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo14: TfrxMemoView
          Left = 136.063080000000000000
          Top = 30.236240000000000000
          Width = 102.047310000000000000
          Height = 52.913420000000000000
          ShowHint = False
          DataField = 'nama'
          DataSet = frxdbdtst1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset1."nama"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo15: TfrxMemoView
          Left = 238.110390000000000000
          Top = 30.236240000000000000
          Width = 75.590600000000000000
          Height = 52.913420000000000000
          ShowHint = False
          DataField = 'jk'
          DataSet = frxdbdtst1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset1."jk"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo16: TfrxMemoView
          Left = 313.700990000000000000
          Top = 30.236240000000000000
          Width = 90.708720000000000000
          Height = 52.913420000000000000
          ShowHint = False
          DataField = 'pendidikan'
          DataSet = frxdbdtst1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset1."pendidikan"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo17: TfrxMemoView
          Left = 404.409710000000000000
          Top = 30.236240000000000000
          Width = 75.590600000000000000
          Height = 52.913420000000000000
          ShowHint = False
          DataField = 'telp'
          DataSet = frxdbdtst1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset1."telp"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo18: TfrxMemoView
          Left = 480.000310000000000000
          Top = 30.236240000000000000
          Width = 86.929190000000000000
          Height = 52.913420000000000000
          ShowHint = False
          DataField = 'matpel'
          DataSet = frxdbdtst1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset1."matpel"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo19: TfrxMemoView
          Left = 566.929500000000000000
          Top = 30.236240000000000000
          Width = 109.606370000000000000
          Height = 52.913420000000000000
          ShowHint = False
          DataField = 'alamat'
          DataSet = frxdbdtst1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset1."alamat"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo20: TfrxMemoView
          Left = 676.535870000000000000
          Top = 30.236240000000000000
          Width = 64.252010000000000000
          Height = 52.913420000000000000
          ShowHint = False
          DataField = 'status'
          DataSet = frxdbdtst1
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
      end
      object PageHeader1: TfrxPageHeader
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'TImes New Roman'
        Font.Style = []
        Height = 52.913420000000000000
        ParentFont = False
        Top = 64.252010000000000000
        Width = 740.409927000000000000
        object Memo1: TfrxMemoView
          Top = 30.236240000000000000
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
            'No.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo2: TfrxMemoView
          Left = 37.795300000000000000
          Top = 30.236240000000000000
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
            'ID')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo3: TfrxMemoView
          Left = 86.929190000000000000
          Top = 30.236240000000000000
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
            'NIK')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo4: TfrxMemoView
          Left = 136.063080000000000000
          Top = 30.236240000000000000
          Width = 102.047310000000000000
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
        object Memo5: TfrxMemoView
          Left = 238.110390000000000000
          Top = 30.236240000000000000
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
            'JENIS KELAMIN')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo6: TfrxMemoView
          Left = 313.700990000000000000
          Top = 30.236240000000000000
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
            'PENDIDIKAN')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          Left = 404.409710000000000000
          Top = 30.236240000000000000
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
            'NO'
            'TELPON')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo8: TfrxMemoView
          Left = 480.000310000000000000
          Top = 30.236240000000000000
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
            'MATA'
            'PELAJARAN')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo9: TfrxMemoView
          Left = 566.929500000000000000
          Top = 30.236240000000000000
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
            'ALAMAT')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo10: TfrxMemoView
          Left = 676.535870000000000000
          Top = 30.236240000000000000
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
            'STATUS')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object PageFooter1: TfrxPageFooter
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'TImes New Roman'
        Font.Style = []
        Height = 22.677180000000000000
        ParentFont = False
        Top = 291.023810000000000000
        Width = 740.409927000000000000
      end
      object Memo21: TfrxMemoView
        Left = 211.653680000000000000
        Top = 3.779530000000000000
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
          'DAFTAR WALI KELAS')
        ParentFont = False
        VAlign = vaCenter
      end
    end
  end
end
