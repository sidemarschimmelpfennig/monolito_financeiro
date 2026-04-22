program ERP;

uses
  Vcl.Forms,
  System.SysUtils,
  ERP.View.Main in '..\..\src\View\ERP.View.Main.pas' {ViewErpMain},
  ERP.Grid.Main in '..\..\src\View\Grids\ERP.Grid.Main.pas' {GridERPMain},
  ERP.View.Splash in '..\..\src\View\ERP.View.Splash.pas' {ViewERPSplash},
  ERP.Service.Default in '..\..\src\Service\ERP.Service.Default.pas',
  Vcl.Themes,
  Vcl.Styles,
  ERP.Model.Users in '..\..\src\Model\ERP.Model.Users.pas' {ModelErpUser: TDataModule},
  ERP.Grid.User in '..\..\src\View\Grids\ERP.Grid.User.pas' {GridERPUser},
  ERP.Model.Connection in '..\..\src\Model\ERP.Model.Connection.pas' {ModelERPConnection: TDataModule};

{$R *.res}

begin
  TStyleManager.TrySetStyle('Windows10 SlateGray');
  Application.CreateForm(TViewErpMain, ViewErpMain);
  Application.CreateForm(TModelERPConnection, ModelERPConnection);
  Application.CreateForm(TGridERPUser, GridERPUser);
  Application.CreateForm(TModelErpUser, ModelErpUser);
  Application.Run;
end.
