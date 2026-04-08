program FinancialMonolith;

uses
  Vcl.Forms,
  uView.FinancialMonolith.main in '..\..\src\View\uView.FinancialMonolith.main.pas' {ViewFinancialMonolithMain},
  uView.FinancialMonolith.RegisterDefault in '..\..\src\View\uView.FinancialMonolith.RegisterDefault.pas' {ViewFinancialMonolithRegisterDefault};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TViewFinancialMonolithMain, ViewFinancialMonolithMain);
  Application.CreateForm(TViewFinancialMonolithRegisterDefault, ViewFinancialMonolithRegisterDefault);
  Application.Run;
end.
