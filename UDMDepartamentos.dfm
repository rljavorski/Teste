inherited DMDepartamentos: TDMDepartamentos
  Height = 71
  Width = 137
  inherited Qry: TFDQuery
    SQL.Strings = (
      'SELECT * FROM DEPARTAMENTOS')
    object Qryid_departamento: TIntegerField
      FieldName = 'id_departamento'
      Origin = 'id_departamento'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object Qrynm_departamento: TWideStringField
      FieldName = 'nm_departamento'
      Origin = 'nm_departamento'
      Size = 100
    end
    object Qrylocal: TWideStringField
      FieldName = 'local'
      Origin = '"local"'
      Size = 10
    end
  end
end
