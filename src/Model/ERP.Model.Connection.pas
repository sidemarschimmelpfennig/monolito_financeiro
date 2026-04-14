unit ERP.Model.Connection;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.VCLUI.Wait,
  Data.DB, FireDAC.Comp.Client, FireDAC.Phys.SQLite, FireDAC.Phys.SQLiteDef,
  FireDAC.Stan.ExprFuncs, FireDAC.Phys.SQLiteWrapper.Stat, FireDAC.Stan.Param,
  FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt, FireDAC.Comp.DataSet, System.IniFiles;

type
  TModelERPConnection = class(TDataModule)
    fdConnectionDataBase: TFDConnection;
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Conect;
    procedure Disconect;
    procedure ReadConfiguration;
  end;

var
  ModelERPConnection: TModelERPConnection;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

{ TModelERPConnection }

procedure TModelERPConnection.Conect;
begin
  fdConnectionDataBase.Connected := true
end;

procedure TModelERPConnection.DataModuleCreate(Sender: TObject);
begin
  ReadConfiguration;
  Conect;
end;

procedure TModelERPConnection.DataModuleDestroy(Sender: TObject);
begin
  Disconect;
end;

procedure TModelERPConnection.Disconect;
begin
  fdConnectionDataBase.Connected := false
end;

procedure TModelERPConnection.ReadConfiguration;
var
  Ini: TIniFile;
  Server,DriverID,LocalIni, Database,LockingMod, User, Password: string;
begin
  LocalIni := 'D:\workspace\projects\sistema_erp_basico\build\' + 'config.ini';
  if not FileExists(LocalIni) then
  begin
    raise Exception.Create('Arquivo de configuração nao encontrado');
  end;
  Ini := TIniFile.Create(LocalIni);
  try
    fdConnectionDataBase.Params.Clear;
    fdConnectionDataBase.Params.Add('DriverID=' + Ini.ReadString('DATABASE', 'DriverID', 'SQLite'));
    fdConnectionDataBase.Params.Add('LockingMode=' + Ini.ReadString('DATABASE', 'LockingMode', 'Exclusive'));
    fdConnectionDataBase.Params.Add('Database=' + Ini.ReadString('DATABASE', 'DataBase', ''));
    fdConnectionDataBase.Params.Add('User_Name=' + Ini.ReadString('DATABASE', 'UserName', ''));
    fdConnectionDataBase.Params.Add('Password=' + Ini.ReadString('DATABASE', 'Password', ''));
    fdConnectionDataBase.Params.Add('Server=' + Ini.ReadString('DATABASE', 'Server', 'localhost'));
    fdConnectionDataBase.Params.Add('Port=' + Ini.ReadString('DATABASE', 'Port', '3306'));
    fdConnectionDataBase.LoginPrompt := False;
  finally
     FreeAndNil(Ini);
  end;
end;

end.
