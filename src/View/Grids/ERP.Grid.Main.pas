unit ERP.Grid.Main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.WinXPanels, Data.DB,
  Vcl.Buttons, Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, System.ImageList,
  Vcl.ImgList;

type
  TGridERPMain = class(TForm)
    pnlMain: TCardPanel;
    cardRegister: TCard;
    imgList: TImageList;
    pnRegisterOptions: TPanel;
    btnRegisterClose: TSpeedButton;
    btnRegisterSave: TSpeedButton;
    cardSearch: TCard;
    pnlOptions: TPanel;
    btnPrinter: TSpeedButton;
    btnEdit: TSpeedButton;
    btnClose: TSpeedButton;
    dbgResultSearch: TDBGrid;
    pnlSearch: TPanel;
    lblSearch: TLabel;
    btnSearch: TSpeedButton;
    edtSearch: TEdit;
    btnInsert: TSpeedButton;
    btnDelete: TSpeedButton;
    DataSource: TDataSource;
    procedure btnAddClick(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
    procedure btnRegisterCloseClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure btnRegisterSaveClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }

  end;

var
  GridERPMain: TGridERPMain;

implementation
{$R *.dfm}


procedure TGridERPMain.btnAddClick(Sender: TObject);
begin
  pnlMain.ActiveCard := cardRegister;
end;

procedure TGridERPMain.btnCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TGridERPMain.btnEditClick(Sender: TObject);
begin
    pnlMain.ActiveCard := cardRegister;
end;

procedure TGridERPMain.btnRegisterCloseClick(
  Sender: TObject);
begin
  pnlMain.ActiveCard := cardSearch;
end;

procedure TGridERPMain.btnRegisterSaveClick(
  Sender: TObject);
begin
  pnlMain.ActiveCard := cardSearch;
end;



procedure TGridERPMain.FormShow(Sender: TObject);
begin
  pnlMain.ActiveCard := cardSearch;

end;



end.
