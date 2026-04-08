unit uView.FinancialMonolith.RegisterDefault;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.WinXPanels;

type
  TViewFinancialMonolithRegisterDefault = class(TForm)
    pnlMain: TCardPanel;
    Card1: TCard;
    Card2: TCard;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ViewFinancialMonolithRegisterDefault: TViewFinancialMonolithRegisterDefault;

implementation

{$R *.dfm}

end.
