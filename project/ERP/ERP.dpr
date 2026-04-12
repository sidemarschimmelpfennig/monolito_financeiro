program ERP;

uses
  Vcl.Forms,
  System.SysUtils,
  ERP.View.Main in '..\..\src\View\ERP.View.Main.pas' {ViewErpMain},
  ERP.View.RegisterDefault in '..\..\src\View\ERP.View.RegisterDefault.pas' {ViewERPRegisterDefault},
  ERP.View.Splash in '..\..\src\View\ERP.View.Splash.pas' {ViewERPSplash};

{$R *.res}

begin
  Application.CreateForm(TViewErpMain, ViewErpMain);
  Application.Run;
end.
