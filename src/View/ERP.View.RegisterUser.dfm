inherited ViewERPRegisterUser: TViewERPRegisterUser
  Align = alClient
  Caption = 'ViewERPRegisterUser'
  OnCreate = FormCreate
  TextHeight = 15
  inherited pnlMain: TCardPanel
    inherited cardSearch: TCard
      inherited DBGrid2: TDBGrid
        DataSource = DS_CONNECTION
      end
    end
  end
end
