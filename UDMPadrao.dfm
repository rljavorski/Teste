object DMPadrao: TDMPadrao
  OldCreateOrder = False
  Height = 68
  Width = 139
  object Qry: TFDQuery
    Connection = DM.Conexao
    Left = 24
    Top = 8
  end
  object DS: TDataSource
    DataSet = Qry
    Left = 88
    Top = 8
  end
end
