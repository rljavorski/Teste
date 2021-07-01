inherited DMEmpregados: TDMEmpregados
  OldCreateOrder = True
  Height = 136
  inherited Qry: TFDQuery
    SQL.Strings = (
      'select * from empregados')
    object Qryid_empregado: TIntegerField
      FieldName = 'id_empregado'
      Origin = 'id_empregado'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object Qrycod_departamento: TIntegerField
      FieldName = 'cod_departamento'
      Origin = 'cod_departamento'
    end
    object Qrycod_emp_funcao: TIntegerField
      FieldName = 'cod_emp_funcao'
      Origin = 'cod_emp_funcao'
    end
    object Qrynm_empregado: TWideStringField
      FieldName = 'nm_empregado'
      Origin = 'nm_empregado'
      Size = 100
    end
    object Qrynm_funcao: TWideStringField
      FieldName = 'nm_funcao'
      Origin = 'nm_funcao'
      Size = 100
    end
    object Qrydata_admissao: TDateField
      FieldName = 'data_admissao'
      Origin = 'data_admissao'
    end
    object Qrysalario: TFMTBCDField
      FieldName = 'salario'
      Origin = 'salario'
      Precision = 64
      Size = 5
    end
    object Qrycomissao: TFMTBCDField
      FieldName = 'comissao'
      Origin = 'comissao'
      Precision = 64
      Size = 5
    end
  end
  object QryRel: TFDQuery
    Connection = DM.Conexao
    SQL.Strings = (
      'select e.*, d.nm_departamento from empregados e'
      
        'inner join departamentos d on d.id_departamento = e.cod_departam' +
        'ento')
    Left = 24
    Top = 72
    object QryRelid_empregado: TIntegerField
      FieldName = 'id_empregado'
      Origin = 'id_empregado'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object QryRelcod_departamento: TIntegerField
      FieldName = 'cod_departamento'
      Origin = 'cod_departamento'
    end
    object QryRelcod_emp_funcao: TIntegerField
      FieldName = 'cod_emp_funcao'
      Origin = 'cod_emp_funcao'
    end
    object QryRelnm_empregado: TWideStringField
      FieldName = 'nm_empregado'
      Origin = 'nm_empregado'
      Size = 100
    end
    object QryRelnm_funcao: TWideStringField
      FieldName = 'nm_funcao'
      Origin = 'nm_funcao'
      Size = 100
    end
    object QryReldata_admissao: TDateField
      FieldName = 'data_admissao'
      Origin = 'data_admissao'
    end
    object QryRelsalario: TFMTBCDField
      FieldName = 'salario'
      Origin = 'salario'
      Precision = 64
      Size = 5
    end
    object QryRelcomissao: TFMTBCDField
      FieldName = 'comissao'
      Origin = 'comissao'
      Precision = 64
      Size = 5
    end
    object QryRelnm_departamento: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'nm_departamento'
      Origin = 'nm_departamento'
      Size = 100
    end
  end
  object DSRel: TDataSource
    DataSet = QryRel
    Left = 88
    Top = 72
  end
end
