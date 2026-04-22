object ModelERPConnection: TModelERPConnection
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Height = 480
  Width = 640
  object fdConnectionDataBase: TFDConnection
    Params.Strings = (
      
        'Database=D:\workspace\projects\sistema_erp_basico\build\database' +
        '.sqlite'
      'DriverID=SQLite')
    Connected = True
    LoginPrompt = False
    Left = 64
    Top = 48
  end
end
