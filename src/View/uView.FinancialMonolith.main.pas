unit uView.FinancialMonolith.main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus;

type
  TViewFinancialMonolithMain = class(TForm)
    MainMenu1: TMainMenu;
    mnuCadastro: TMenuItem;
    mnuRelatorios: TMenuItem;
    mnuAjuda: TMenuItem;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ViewFinancialMonolithMain: TViewFinancialMonolithMain;

implementation

{$R *.dfm}

end.
