object ModelERPConnection: TModelERPConnection
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Height = 480
  Width = 640
  object fdConnectionDataBase: TFDConnection
    Params.Strings = (
      'DriverID=SQLite'
      
        'Database=D:\workspace\projects\sistema_erp_basico\build\database' +
        '.sqlite')
    Connected = True
    LoginPrompt = False
    Left = 64
    Top = 48
  end
  object DataQuery: TFDQuery
    Connection = fdConnectionDataBase
    SQL.Strings = (
      '')
    Left = 208
    Top = 56
  end
end
