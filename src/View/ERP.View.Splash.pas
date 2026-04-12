unit ERP.View.Splash;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.ComCtrls, Vcl.Imaging.pngimage;

type
  TViewERPSplash = class(TForm)
    pnlMain: TPanel;
    imgLogo: TImage;
    pbLoading: TProgressBar;
    lbProgressLoading: TLabel;
    lbSystemName: TLabel;
    timerLoading: TTimer;
    pnlProgressBar: TPanel;
    imgDll: TImage;
    imgDatabase: TImage;
    imgInite: TImage;
    imgConfig: TImage;
    procedure timerLoadingTimer(Sender: TObject);
  private
    { Private declarations }

    procedure UpdateStatusBar( MessageStatus: String; Img : TImage);
  public
    { Public declarations }
  end;

var
  ViewERPSplash: TViewERPSplash;

implementation

{$R *.dfm}

procedure TViewERPSplash.timerLoadingTimer(Sender: TObject);
begin
  if pbLoading.Position <= 100 then
  begin
    pbLoading.StepIt;
    case pbLoading.Position of
      10: UpdateStatusBar('Carregando Dependências', imgDll);
      25: UpdateStatusBar('Conectando ao banco de dados', imgDatabase);
      45: UpdateStatusBar('Carregando as Configurações', imgConfig);
      75: UpdateStatusBar('Iniciando o Sistema...', imgInite);
    end;
  end;
  if pbLoading.Position = 100 then
  begin
    Self.Close;
  end
end;

procedure TViewERPSplash.UpdateStatusBar(MessageStatus: string; Img: TImage);
begin
   lbProgressLoading.Caption := MessageStatus;
   Img.Visible := true;
end;

end.
