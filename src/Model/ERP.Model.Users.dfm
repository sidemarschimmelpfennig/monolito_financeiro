object ModelErpUser: TModelErpUser
  Height = 480
  Width = 640
  object dspUsers: TDataSetProvider
    DataSet = queryUsers
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 184
    Top = 72
  end
  object cdsUsers: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspUsers'
    Left = 312
    Top = 88
    object cdsUsersID: TIntegerField
      FieldName = 'ID'
    end
    object cdsUsersNOME: TStringField
      FieldName = 'NOME'
      Size = 256
    end
    object cdsUsersLOGIN: TStringField
      FieldName = 'LOGIN'
      Size = 30
    end
    object cdsUsersSENHA: TStringField
      FieldName = 'SENHA'
      Size = 256
    end
    object cdsUsersSTATUS: TStringField
      FieldName = 'STATUS'
      Size = 1
    end
    object cdsUsersDATA_CADASTRO: TDateField
      FieldName = 'DATA_CADASTRO'
    end
  end
  object queryUsers: TFDQuery
    Connection = ModelERPConnection.fdConnectionDataBase
    Left = 24
    Top = 64
  end
end
