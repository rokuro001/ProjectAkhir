object DataModule2: TDataModule2
  OldCreateOrder = False
  Left = 192
  Top = 125
  Height = 329
  Width = 535
  object ZConnection1: TZConnection
    ControlsCodePage = cGET_ACP
    UTF8StringsAsWideField = False
    AutoEncodeStrings = False
    Connected = True
    HostName = 'localhost'
    Port = 3306
    Database = 'dbsekolah'
    User = 'root'
    Protocol = 'mysql'
    LibraryLocation = 'C:\Users\adilc\Desktop\Delphi7\ProjectAkhir\libmysql.dll'
    Left = 56
    Top = 24
  end
  object ZQuery_siswa: TZQuery
    Connection = ZConnection1
    Active = True
    SQL.Strings = (
      'select * from siswa')
    Params = <>
    Left = 56
    Top = 104
  end
  object ZQuery1_ortu: TZQuery
    Connection = ZConnection1
    Active = True
    SQL.Strings = (
      'select * from ortu')
    Params = <>
    Left = 192
    Top = 104
  end
  object ZQuery1_wali_kelas: TZQuery
    Connection = ZConnection1
    Active = True
    SQL.Strings = (
      'select * from wali_kelas')
    Params = <>
    Left = 304
    Top = 104
  end
  object ZQuery1_hubungan: TZQuery
    Connection = ZConnection1
    Active = True
    SQL.Strings = (
      'select * from hubungan')
    Params = <>
    Left = 48
    Top = 176
  end
  object ZQuery1_poin: TZQuery
    Connection = ZConnection1
    SQL.Strings = (
      'select * from poin')
    Params = <>
    Left = 176
    Top = 184
  end
  object ZQuery1_kelas: TZQuery
    Connection = ZConnection1
    SQL.Strings = (
      'select * from kelas'
      '')
    Params = <>
    Left = 304
    Top = 184
  end
  object ZQuery1_semester: TZQuery
    Connection = ZConnection1
    Active = True
    SQL.Strings = (
      'select * from semester')
    Params = <>
    Left = 408
    Top = 104
  end
  object ZQuery1_user: TZQuery
    Connection = ZConnection1
    Active = True
    SQL.Strings = (
      'select * from user')
    Params = <>
    Left = 416
    Top = 192
  end
end