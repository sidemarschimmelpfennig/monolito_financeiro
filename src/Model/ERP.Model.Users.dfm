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
  end
  object queryUsers: TFDQuery
    Connection = ModelERPConnection.fdConnectionDataBase
    Left = 24
    Top = 64
  end
end
