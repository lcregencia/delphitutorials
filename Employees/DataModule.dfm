object DM: TDM
  OldCreateOrder = False
  Height = 384
  Width = 654
  object Conn: TMyConnection
    Database = 'northwind'
    Username = 'root'
    Connected = True
    LoginPrompt = False
    Left = 64
    Top = 32
  end
  object QrySelect: TMyQuery
    Connection = Conn
    Left = 160
    Top = 32
  end
  object QryInsert: TMyQuery
    Connection = Conn
    Left = 96
    Top = 112
  end
  object QryUpdate: TMyQuery
    Connection = Conn
    Left = 200
    Top = 112
  end
  object QryDelete: TMyQuery
    Connection = Conn
    Left = 312
    Top = 112
  end
  object QrySelectDetails: TMyQuery
    Connection = Conn
    Left = 248
    Top = 32
  end
end
