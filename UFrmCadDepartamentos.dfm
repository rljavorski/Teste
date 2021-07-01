inherited FrmDepartamentos: TFrmDepartamentos
  Caption = 'Cadastro de Departamentos'
  OnShow = FormShow
  ExplicitTop = -74
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
        DataSource = DMDepartamentos.DS
        Columns = <
          item
            Expanded = False
            FieldName = 'id_departamento'
            Title.Caption = 'C'#243'digo'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'nm_departamento'
            Title.Caption = 'Nome'
            Width = 250
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'local'
            Title.Caption = 'Local'
            Visible = True
          end>
      end
    end
    inherited TabCadastro: TTabSheet
      ExplicitLeft = 0
      ExplicitTop = 28
      object Label2: TLabel [0]
        Left = 16
        Top = 16
        Width = 33
        Height = 13
        Caption = 'C'#243'digo'
      end
      object Label3: TLabel [1]
        Left = 16
        Top = 53
        Width = 27
        Height = 13
        Caption = 'Nome'
      end
      object Local: TLabel [2]
        Left = 16
        Top = 88
        Width = 28
        Height = 13
        Caption = 'Local:'
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
        Left = 72
        Top = 13
        Width = 121
        Height = 21
        TabOrder = 1
      end
      object EdtNome: TEdit
        Left = 72
        Top = 50
        Width = 345
        Height = 21
        TabOrder = 2
      end
      object EdtLocal: TEdit
        Left = 72
        Top = 85
        Width = 177
        Height = 21
        TabOrder = 3
      end
    end
  end
end
