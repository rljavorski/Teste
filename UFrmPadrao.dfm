object FrmPadrao: TFrmPadrao
  Left = 0
  Top = 0
  Caption = 'Padr'#227'o'
  ClientHeight = 445
  ClientWidth = 726
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 726
    Height = 445
    ActivePage = TabPesquisa
    Align = alClient
    TabOrder = 0
    object TabPesquisa: TTabSheet
      Caption = 'Pesquisa'
      ExplicitLeft = 8
      ExplicitTop = 28
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 718
        Height = 49
        Align = alTop
        TabOrder = 0
        object Label1: TLabel
          Left = 23
          Top = 18
          Width = 42
          Height = 13
          Caption = 'Pesquisa'
        end
        object btnIncluir: TButton
          Left = 478
          Top = 13
          Width = 75
          Height = 25
          Caption = 'Incluir'
          TabOrder = 0
        end
        object btnAlterar: TButton
          Left = 559
          Top = 13
          Width = 75
          Height = 25
          Caption = 'Alterar'
          TabOrder = 1
        end
        object BtnExcluir: TButton
          Left = 640
          Top = 13
          Width = 75
          Height = 25
          Caption = 'Excluir'
          TabOrder = 2
        end
        object BtnPesquisa: TButton
          Left = 384
          Top = 13
          Width = 75
          Height = 25
          Caption = 'Pesquisar'
          TabOrder = 3
        end
        object EdtPesquisa: TEdit
          Left = 88
          Top = 15
          Width = 281
          Height = 21
          TabOrder = 4
          OnKeyDown = EdtPesquisaKeyDown
        end
      end
      object DBGridPesquisa: TDBGrid
        Left = 0
        Top = 49
        Width = 718
        Height = 368
        Align = alClient
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnDblClick = DBGridPesquisaDblClick
      end
    end
    object TabCadastro: TTabSheet
      Caption = 'Cadastro'
      ImageIndex = 1
      TabVisible = False
      ExplicitLeft = 8
      ExplicitTop = 40
      object Panel2: TPanel
        Left = 0
        Top = 376
        Width = 718
        Height = 41
        Align = alBottom
        TabOrder = 0
        ExplicitLeft = 200
        ExplicitTop = 224
        ExplicitWidth = 185
        object btnGravar: TButton
          Left = 272
          Top = 8
          Width = 75
          Height = 25
          Caption = 'Gravar'
          TabOrder = 0
        end
        object btnCancelar: TButton
          Left = 368
          Top = 8
          Width = 75
          Height = 25
          Caption = 'Cancelar'
          TabOrder = 1
        end
      end
    end
  end
end
