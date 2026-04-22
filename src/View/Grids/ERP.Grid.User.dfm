inherited GridERPUser: TGridERPUser
  Align = alClient
  Caption = 'GridERPUser'
  TextHeight = 15
  inherited pnlMain: TCardPanel
    inherited cardSearch: TCard
      inherited pnlSearch: TPanel
        inherited btnSearch: TSpeedButton
          OnClick = btnSearchClick
        end
      end
    end
  end
  inherited DataSource: TDataSource
    DataSet = ModelErpUser.cdsUsers
  end
end
