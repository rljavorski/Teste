inherited FrmEmpregados: TFrmEmpregados
  Caption = 'Cadastro de Empregados'
  PixelsPerInch = 96
  TextHeight = 13
  inherited PageControl1: TPageControl
    ActivePage = TabCadastro
    inherited TabPesquisa: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      inherited Panel1: TPanel
        inherited btnIncluir: TButton
          OnClick = btnIncluirClick
        end
        inherited btnAlterar: TButton
          OnClick = btnAlterarClick
        end
        inherited BtnExcluir: TButton
          OnClick = BtnExcluirClick
        end
        inherited BtnPesquisa: TButton
          OnClick = BtnPesquisaClick
        end
      end
      inherited DBGridPesquisa: TDBGrid
        DataSource = DMEmpregados.DS
        Columns = <
          item
            Expanded = False
            FieldName = 'id_empregado'
            Title.Caption = 'C'#243'digo'
            Width = 38
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'cod_departamento'
            Title.Caption = 'Departamento'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'cod_emp_funcao'
            Title.Caption = 'Fun'#231#227'o'
            Width = 42
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'nm_empregado'
            Title.Caption = 'Nome'
            Width = 206
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'nm_funcao'
            Title.Caption = 'Nome Fun'#231#227'o'
            Width = 171
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'data_admissao'
            Title.Caption = 'Data Admiss'#227'o'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'salario'
            Title.Caption = 'Sal'#225'rio'
            Width = 67
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'comissao'
            Title.Caption = 'Comiss'#227'o'
            Visible = True
          end>
      end
    end
    inherited TabCadastro: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      object Label2: TLabel [0]
        Left = 16
        Top = 16
        Width = 31
        Height = 13
        Caption = 'C'#243'dgo'
      end
      object Label3: TLabel [1]
        Left = 16
        Top = 53
        Width = 73
        Height = 13
        Caption = 'Departamento:'
      end
      object Label4: TLabel [2]
        Left = 16
        Top = 88
        Width = 39
        Height = 13
        Caption = 'Fun'#231#227'o:'
      end
      object Label5: TLabel [3]
        Left = 16
        Top = 120
        Width = 31
        Height = 13
        Caption = 'Nome:'
      end
      object Label6: TLabel [4]
        Left = 16
        Top = 152
        Width = 69
        Height = 13
        Caption = 'Nome Fun'#231#227'o:'
      end
      object Label7: TLabel [5]
        Left = 16
        Top = 184
        Width = 75
        Height = 13
        Caption = 'Data Admiss'#227'o:'
      end
      object Label8: TLabel [6]
        Left = 16
        Top = 216
        Width = 36
        Height = 13
        Caption = 'Sal'#225'rio:'
      end
      object Label9: TLabel [7]
        Left = 16
        Top = 248
        Width = 49
        Height = 13
        Caption = 'Comiss'#227'o:'
      end
      inherited Panel2: TPanel
        ExplicitLeft = 0
        ExplicitTop = 376
        ExplicitWidth = 718
        inherited btnGravar: TButton
          OnClick = btnGravarClick
        end
        inherited btnCancelar: TButton
          OnClick = btnCancelarClick
        end
      end
      object EdtCodigo: TEdit
        Left = 112
        Top = 13
        Width = 121
        Height = 21
        TabOrder = 1
      end
      object EdtDepartamento: TEdit
        Left = 112
        Top = 50
        Width = 121
        Height = 21
        TabOrder = 2
      end
      object EdtFuncao: TEdit
        Left = 112
        Top = 85
        Width = 121
        Height = 21
        TabOrder = 3
      end
      object EdtNome: TEdit
        Left = 112
        Top = 117
        Width = 385
        Height = 21
        TabOrder = 4
      end
      object EdtNomeFuncao: TEdit
        Left = 112
        Top = 149
        Width = 385
        Height = 21
        TabOrder = 5
      end
      object EdtDataAdmissao: TEdit
        Left = 112
        Top = 181
        Width = 121
        Height = 21
        TabOrder = 6
      end
      object EdtSalario: TEdit
        Left = 112
        Top = 213
        Width = 121
        Height = 21
        TabOrder = 7
      end
      object EdtComissao: TEdit
        Left = 112
        Top = 245
        Width = 121
        Height = 21
        TabOrder = 8
      end
    end
  end
end
