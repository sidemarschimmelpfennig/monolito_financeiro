object ViewErpMain: TViewErpMain
  Left = 0
  Top = 0
  Caption = 'Monolito Financeiro'
  ClientHeight = 418
  ClientWidth = 646
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = mainMenuFinancialMonolith
  Position = poScreenCenter
  WindowState = wsMaximized
  OnCreate = FormCreate
  TextHeight = 13
  object mainMenuFinancialMonolith: TMainMenu
    Left = 504
    Top = 48
    object menuRegister: TMenuItem
      Caption = 'Cadastro '
      object menuRegisterDefault: TMenuItem
        Caption = 'Cadastro Padr'#227'o'
        OnClick = menuRegisterDefaultClick
      end
    end
    object menuReports: TMenuItem
      Caption = 'Relat'#243'rios'
    end
    object menuHelp: TMenuItem
      Caption = 'Ajuda'
    end
  end
end
