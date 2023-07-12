object DataModule2: TDataModule2
  OldCreateOrder = False
  Left = 291
  Top = 155
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
    Left = 40
    Top = 40
  end
  object ZQuery_siswa: TZQuery
    Connection = ZConnection1
    Active = True
    SQL.Strings = (
      'select * from tablesiswa')
    Params = <>
    Left = 56
    Top = 104
  end
  object ZQuery_ortu: TZQuery
    Connection = ZConnection1
    Active = True
    SQL.Strings = (
      'select * from tableortu')
    Params = <>
    Left = 192
    Top = 104
  end
  object ZQuery_wali_kelas: TZQuery
    Connection = ZConnection1
    Active = True
    SQL.Strings = (
      'select * from tablewalikelas')
    Params = <>
    Left = 304
    Top = 104
  end
  object ZQuery_hubungan: TZQuery
    Connection = ZConnection1
    Active = True
    SQL.Strings = (
      'select * from tablehubungan')
    Params = <>
    Left = 48
    Top = 176
  end
  object ZQuery_poin: TZQuery
    Connection = ZConnection1
    Active = True
    SQL.Strings = (
      'select * from tablepoin')
    Params = <>
    Left = 176
    Top = 184
  end
  object ZQuery_kelas: TZQuery
    Connection = ZConnection1
    Active = True
    SQL.Strings = (
      'select * from tablekelas'
      '')
    Params = <>
    Left = 304
    Top = 184
  end
  object ZQuery_semester: TZQuery
    Connection = ZConnection1
    Active = True
    SQL.Strings = (
      'select * from tablesemester')
    Params = <>
    Left = 408
    Top = 104
  end
  object ZQuery_user: TZQuery
    Connection = ZConnection1
    Active = True
    SQL.Strings = (
      'select * from tableuser')
    Params = <>
    Left = 144
    Top = 40
  end
end
