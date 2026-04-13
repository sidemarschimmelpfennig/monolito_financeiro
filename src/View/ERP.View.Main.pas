unit ERP.View.Main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, ERP.View.RegisterDefault, ERP.View.Splash, ERP.View.RegisterUser,
  Vcl.ExtCtrls, Vcl.Imaging.pngimage;

type
  TViewErpMain = class(TForm)
    mainMenuERP: TMainMenu;
    menuRegister: TMenuItem;
    menuReports: TMenuItem;
    menuHelp: TMenuItem;
    menuRegisterUser: TMenuItem;
    pnContent: TPanel;
    Image1: TImage;
    procedure FormCreate(Sender: TObject);
    procedure menuRegisterUserClick(Sender: TObject);
  private
    { Private declarations }

    fViewRegister: TViewErpRegisterDefault;
    fViewSplash : TViewERPSplash;
    fViewUser : TViewERPRegisterUser;
  public
    { Public declarations }

  end;

var
  ViewErpMain: TViewErpMain;

implementation

{$R *.dfm}


procedure TViewErpMain.menuRegisterUserClick(Sender: TObject);
begin
    fViewUser := TViewErpRegisterUser.Create(nil);
    fViewUser.Parent := pnContent;   // coloca dentro do panel
    fViewUser.Align := alClient;     // ocupa todo o espaço
    fViewUser.BorderStyle := bsNone; // remove borda
    fViewUser.Show;
end;

procedure TViewErpMain.FormCreate(Sender: TObject);
begin
  fViewSplash := TViewErpSplash.Create(nil);
  try
    fViewSplash.ShowModal;
  finally
    FreeAndNil(fViewSplash);
  end;
end;


end.
