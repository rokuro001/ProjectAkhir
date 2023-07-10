unit Unit2;

interface

uses
  SysUtils, Classes, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  ZAbstractConnection, ZConnection;

type
  TDataModule2 = class(TDataModule)
    ZConnection1: TZConnection;
    ZQuery_siswa: TZQuery;
    ZQuery_ortu: TZQuery;
    ZQuery_wali_kelas: TZQuery;
    ZQuery_hubungan: TZQuery;
    ZQuery_poin: TZQuery;
    ZQuery_kelas: TZQuery;
    ZQuery_semester: TZQuery;
    ZQuery_user: TZQuery;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModule2: TDataModule2;

implementation

{$R *.dfm}

end.
