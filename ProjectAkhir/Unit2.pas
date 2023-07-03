unit Unit2;

interface

uses
  SysUtils, Classes, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  ZAbstractConnection, ZConnection;

type
  TDataModule2 = class(TDataModule)
    ZConnection1: TZConnection;
    ZQuery_siswa: TZQuery;
    ZQuery1_ortu: TZQuery;
    ZQuery1_wali_kelas: TZQuery;
    ZQuery1_hubungan: TZQuery;
    ZQuery1_poin: TZQuery;
    ZQuery1_kelas: TZQuery;
    ZQuery1_semester: TZQuery;
    ZQuery1_user: TZQuery;
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
