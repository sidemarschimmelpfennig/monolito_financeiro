unit ERP.Service.RegisterUser;

interface
uses
  System.SysUtils, ERP.Model.Connection,System.Classes;

type
  TServiceErpRegisterUser = class(TObject)
  private
    { Private declarations }
  public
    { Public declarations }
    constructor Create;
    procedure show_users;
    procedure clear;
  end;

implementation



{ TServiceErpRegisterUser }



procedure TServiceErpRegisterUser.clear;
begin
  ModelERPConnection.DataQuery.SQL.Clear;
end;

constructor TServiceErpRegisterUser.Create;
begin

end;

procedure TServiceErpRegisterUser.show_users;
begin
  ModelERPConnection.DataQuery.Close;
  ModelERPConnection.DataQuery.SQL.Text := 'SELECT * FROM usuarios';
  ModelERPConnection.DataQuery.Open;
end;

end.
