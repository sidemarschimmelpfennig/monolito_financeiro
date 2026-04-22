inherited GridERPUser: TGridERPUser
  Align = alClient
  Caption = 'GridERPUser'
  TextHeight = 15
  inherited pnlMain: TCardPanel
    ActiveCard = cardRegister
    inherited cardSearch: TCard
      inherited dbgResultSearch: TDBGrid
        Columns = <
          item
            Expanded = False
            FieldName = 'NOME'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'LOGIN'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'STATUS'
            Visible = True
          end>
      end
      inherited pnlSearch: TPanel
        inherited btnSearch: TSpeedButton
          OnClick = btnSearchClick
        end
      end
    end
    inherited cardRegister: TCard
      object Label1: TLabel [0]
        Left = 72
        Top = 115
        Width = 33
        Height = 15
        Caption = 'Nome'
      end
      object Label2: TLabel [1]
        Left = 72
        Top = 171
        Width = 40
        Height = 15
        Caption = 'Usuario'
      end
      object Label3: TLabel [2]
        Left = 73
        Top = 224
        Width = 32
        Height = 15
        Caption = 'Senha'
      end
      object Label4: TLabel [3]
        Left = 72
        Top = 272
        Width = 32
        Height = 15
        Caption = 'Status'
      end
      object Edit1: TEdit
        Left = 168
        Top = 112
        Width = 233
        Height = 33
        TabOrder = 1
        Text = 'Edit1'
      end
      object Edit2: TEdit
        Left = 168
        Top = 221
        Width = 233
        Height = 28
        TabOrder = 2
        Text = 'Edit1'
      end
      object Edit3: TEdit
        Left = 168
        Top = 168
        Width = 233
        Height = 31
        TabOrder = 3
        Text = 'Edit1'
      end
      object ToggleSwitch1: TToggleSwitch
        Left = 168
        Top = 272
        Width = 73
        Height = 20
        TabOrder = 4
      end
    end
  end
  inherited imgList: TImageList
    Left = 560
    Top = 128
  end
  inherited DataSource: TDataSource
    DataSet = ModelErpUser.cdsUsers
  end
end
