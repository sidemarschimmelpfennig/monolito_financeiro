unit ERP.View.Main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.Imaging.pngimage,
  Vcl.ExtCtrls;

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

  public
    { Public declarations }

  end;

var
  ViewErpMain: TViewErpMain;

implementation
  uses
    ERP.View.Splash, ERP.Grid.User;

{$R *.dfm}


procedure TViewErpMain.menuRegisterUserClick(Sender: TObject);
begin
    GridERPUser.Show;
end;

procedure TViewErpMain.FormCreate(Sender: TObject);
begin
  ViewERPSplash := TViewErpSplash.Create(nil);
  try
    ViewERPSplash.ShowModal;
  finally
    FreeAndNil(ViewERPSplash);
  end;
end;


end.
