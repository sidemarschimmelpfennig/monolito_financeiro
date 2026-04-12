unit ERP.View.Main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, ERP.View.RegisterDefault, ERP.View.Splash;

type
  TViewErpMain = class(TForm)
    mainMenuFinancialMonolith: TMainMenu;
    menuRegister: TMenuItem;
    menuReports: TMenuItem;
    menuHelp: TMenuItem;
    menuRegisterDefault: TMenuItem;
    procedure menuRegisterDefaultClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }

    fViewRegister: TViewErpRegisterDefault;
    fViewSplash : TViewERPSplash;
  public
    { Public declarations }

  end;

var
  ViewErpMain: TViewErpMain;

implementation

{$R *.dfm}





procedure TViewErpMain.FormCreate(Sender: TObject);
begin
  fViewSplash := TViewErpSplash.Create(nil);
  try
    fViewSplash.ShowModal;
  finally
    FreeAndNil(fViewSplash);
  end;
end;

procedure TViewErpMain.menuRegisterDefaultClick(Sender: TObject);
begin
  fViewRegister:= TViewErpRegisterDefault.Create(nil);
  try
    fViewRegister.ShowModal;
  finally
    FreeAndNil(fViewRegister);
  end;
end;

end.
