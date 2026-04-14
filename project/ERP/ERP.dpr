program ERP;

uses
  Vcl.Forms,
  System.SysUtils,
  ERP.View.Main in '..\..\src\View\ERP.View.Main.pas' {ViewErpMain},
  ERP.View.RegisterDefault in '..\..\src\View\ERP.View.RegisterDefault.pas' {ViewERPRegisterDefault},
  ERP.View.Splash in '..\..\src\View\ERP.View.Splash.pas' {ViewERPSplash},
  ERP.Model.Connection in '..\..\src\Model\ERP.Model.Connection.pas' {ModelERPConnection: TDataModule},
  ERP.View.RegisterUser in '..\..\src\View\ERP.View.RegisterUser.pas' {ViewERPRegisterUser},
  ERP.Service.Default in '..\..\src\Service\ERP.Service.Default.pas',
  ERP.Service.RegisterUser in '..\..\src\Service\ERP.Service.RegisterUser.pas',
  Vcl.Themes,
  Vcl.Styles,
  ERP.Model.Users in '..\..\src\Model\ERP.Model.Users.pas' {ModelErpUser: TDataModule};

{$R *.res}

begin
  TStyleManager.TrySetStyle('Windows10 SlateGray');
  Application.CreateForm(TViewErpMain, ViewErpMain);
  Application.CreateForm(TModelERPConnection, ModelERPConnection);
  Application.Run;
end.
