object DM: TDM
  OldCreateOrder = False
  Height = 79
  Width = 215
  object Conexao: TFDConnection
    Params.Strings = (
      'Password=12345'
      'User_Name=postgres'
      'Database=teste'
      'DriverID=PG')
    LoginPrompt = False
    Left = 40
    Top = 16
  end
  object DriverLink: TFDPhysPgDriverLink
    VendorHome = 'C:\Program Files (x86)\PostgreSQL\10'
    Left = 128
    Top = 16
  end
end
