object ModelERPUser: TModelERPUser
  Height = 480
  Width = 640
  object queryUsers: TFDQuery
    Left = 56
    Top = 64
  end
  object dspUsers: TDataSetProvider
    DataSet = queryUsers
    Left = 152
    Top = 64
  end
  object cdsUsers: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspUser'
    Left = 248
    Top = 64
  end
end
