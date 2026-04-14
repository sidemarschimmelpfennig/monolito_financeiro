unit ERP.View.RegisterUser;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ERP.View.RegisterDefault, Data.DB,
  System.ImageList, Vcl.ImgList, Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids,
  Vcl.Buttons, Vcl.ExtCtrls, Vcl.WinXPanels, ERP.Service.RegisterUser;

type
  TViewERPRegisterUser = class(TViewERPRegisterDefault)
  private
    { Private declarations }
    fService:  TServiceErpRegisterUser;
  public
    { Public declarations }
  end;

var
  ViewERPRegisterUser: TViewERPRegisterUser;

implementation

{$R *.dfm}

end.
