object ModelErpUser: TModelErpUser
  Height = 480
  Width = 640
  object queryUsers: TSQLQuery
    Params = <>
    Left = 72
    Top = 56
  end
  object dspUsers: TDataSetProvider
    DataSet = queryUsers
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
end
