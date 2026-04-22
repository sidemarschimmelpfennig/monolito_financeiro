unit ERP.Grid.User;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ERP.Grid.Main, Data.DB,
  System.ImageList, Vcl.ImgList, Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids,
  Vcl.Buttons, Vcl.ExtCtrls, Vcl.WinXPanels ;

type
  TGridERPUser = class(TGridERPMain)
    procedure btnSearchClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  GridERPUser: TGridERPUser;

implementation
uses
  ERP.Model.Users;

{$R *.dfm}

procedure TGridERPUser.btnSearchClick(Sender: TObject);
begin
  inherited;

  ModelErpUser.cdsUsers.Close;
  ModelErpUser.cdsUsers.CommandText := 'Select * from usuarios';
  ModelErpUser.cdsUsers.Open;

end;

end.
