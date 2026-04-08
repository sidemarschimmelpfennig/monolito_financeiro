object ViewFinancialMonolithRegisterDefault: TViewFinancialMonolithRegisterDefault
  Left = 0
  Top = 0
  Caption = 'Cadastro Padr'#227'o'
  ClientHeight = 441
  ClientWidth = 624
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object pnlMain: TCardPanel
    Left = 0
    Top = 0
    Width = 624
    Height = 441
    Align = alClient
    ActiveCard = Card2
    BevelOuter = bvNone
    Caption = 'pnlMain'
    TabOrder = 0
    ExplicitLeft = 144
    ExplicitTop = 80
    ExplicitWidth = 300
    ExplicitHeight = 200
    object Card1: TCard
      Left = 0
      Top = 0
      Width = 624
      Height = 441
      Caption = 'cardSearch'
      CardIndex = 0
      Enabled = False
      TabOrder = 0
      ExplicitWidth = 185
      ExplicitHeight = 41
    end
    object Card2: TCard
      Left = 0
      Top = 0
      Width = 624
      Height = 441
      Caption = 'cardRegister'
      CardIndex = 1
      TabOrder = 1
      ExplicitWidth = 185
      ExplicitHeight = 41
    end
  end
end
