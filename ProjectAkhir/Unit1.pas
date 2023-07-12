unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, StdCtrls;

type
  TForm1 = class(TForm)
    lbl1: TLabel;
    lbl2: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    btn1: TButton;
    Button1: TButton;
    procedure btn1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  username:string;
  password:string;
  level:string;

implementation

uses
  Unit2, ZAbstractDataset, Unit3, Unit4, Unit12;

{$R *.dfm}

procedure TForm1.btn1Click(Sender: TObject);
begin
begin
  username := Edit1.Text;
  password := Edit2.Text;

   DataModule2.ZQuery_user := DataModule2.ZQuery_user.Create(nil);
  try
    DataModule2.ZQuery_user.Connection := DataModule2.ZConnection1;
    DataModule2.ZQuery_user.SQL.Text := 'SELECT level FROM tableuser WHERE username = :username AND password = :password';
    DataModule2.ZQuery_user.ParamByName('username').AsString := username;
    DataModule2.ZQuery_user.ParamByName('password').AsString := password;
    DataModule2.ZQuery_user.Open;

    if not DataModule2.ZQuery_user.IsEmpty then
    begin
      level := DataModule2.ZQuery_user.FieldByName('level').AsString;
      if level = 'admin' then
      begin
        // Pengguna berhasil login sebagai admin
        ShowMessage('Admin login successful');
        Form3.Show;
      end
      else if level = 'wali kelas' then
      begin
        // Pengguna berhasil login sebagai pengguna
        ShowMessage('Wali kelas login successful');
        Form4.Show;
      end;
    end
    else
    begin
      // Informasi login tidak valid
      ShowMessage('Invalid username or password');
    end;
  finally
    DataModule2.ZQuery_user.Free;
  end;
end;
end;


procedure TForm1.Button1Click(Sender: TObject);
begin
  form12.show;
end;

end.
