unit ERP.View.RegisterDefault;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.WinXPanels, Data.DB,
  Vcl.Buttons, Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, System.ImageList,
  Vcl.ImgList,  ERP.Model.Connection;

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
    DS_CONNECTION: TDataSource;
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
    procedure AdjusteColumn(Grid: TDBGrid; ColumnIndex: Integer);
  end;

var
  ViewERPRegisterDefault: TViewERPRegisterDefault;

implementation

{$R *.dfm}

procedure TViewERPRegisterDefault.AdjusteColumn(Grid: TDBGrid;
  ColumnIndex: Integer);
var
  i, Widht, MaxWidth: Integer;
  Texto: string;
begin
  MaxWidth := Grid.Canvas.TextWidth(Grid.Columns[ColumnIndex].Title.Caption);

  Grid.DataSource.DataSet.DisableControls;
  try
    Grid.DataSource.DataSet.First;
    while not Grid.DataSource.DataSet.Eof do
    begin
      Texto := Grid.DataSource.DataSet.Fields[ColumnIndex].AsString;
      Widht := Grid.Canvas.TextWidth(Texto);

      if Widht > MaxWidth then
        MaxWidth := Widht;

      Grid.DataSource.DataSet.Next;
    end;
  finally
    Grid.DataSource.DataSet.EnableControls;
  end;

  // adiciona uma margem
  Grid.Columns[ColumnIndex].Width := MaxWidth + 5;
end;

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
  ModelERPConnection.DataQuery.Open;
  AdjusteColumn(DBGrid2, 0);
  pnlMain.ActiveCard := cardSearch;

end;



end.
