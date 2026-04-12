unit ERP.View.RegisterDefault;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.WinXPanels, Data.DB,
  Vcl.Buttons, Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, System.ImageList,
  Vcl.ImgList;

type
  TViewERPRegisterDefault = class(TForm)
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
    DBGrid2: TDBGrid;
    Panel2: TPanel;
    Label1: TLabel;
    SpeedButton5: TSpeedButton;
    Edit1: TEdit;
    btnInsert: TSpeedButton;
    btnDelete: TSpeedButton;
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
  ViewERPRegisterDefault: TViewERPRegisterDefault;

implementation

{$R *.dfm}

procedure TViewERPRegisterDefault.btnAddClick(Sender: TObject);
begin
  pnlMain.ActiveCard := cardRegister;
end;

procedure TViewERPRegisterDefault.btnCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TViewERPRegisterDefault.btnEditClick(Sender: TObject);
begin
    pnlMain.ActiveCard := cardRegister;
end;

procedure TViewERPRegisterDefault.btnRegisterCloseClick(
  Sender: TObject);
begin
  pnlMain.ActiveCard := cardSearch;
end;

procedure TViewERPRegisterDefault.btnRegisterSaveClick(
  Sender: TObject);
begin
  pnlMain.ActiveCard := cardSearch;
end;

procedure TViewERPRegisterDefault.FormShow(Sender: TObject);
begin
  pnlMain.ActiveCard := cardSearch;
end;

end.
