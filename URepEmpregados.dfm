object FrmRepEmpregados: TFrmRepEmpregados
  Left = 0
  Top = 0
  Caption = 'FrmRepEmpregados'
  ClientHeight = 487
  ClientWidth = 974
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object RLReport1: TRLReport
    Left = 24
    Top = 8
    Width = 1123
    Height = 794
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    PageSetup.Orientation = poLandscape
    PreviewOptions.ShowModal = True
    object RLBand1: TRLBand
      Left = 38
      Top = 38
      Width = 1047
      Height = 83
      BandType = btTitle
      object RLLabel1: TRLLabel
        Left = 248
        Top = 24
        Width = 426
        Height = 42
        Caption = 'Relat'#243'rio de Empregados'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -37
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
    end
    object RLBand2: TRLBand
      Left = 38
      Top = 121
      Width = 1047
      Height = 24
      BandType = btColumnHeader
      object RLLabel2: TRLLabel
        Left = 9
        Top = 6
        Width = 44
        Height = 16
        Caption = 'C'#243'digo'
      end
      object RLLabel3: TRLLabel
        Left = 88
        Top = 6
        Width = 85
        Height = 16
        Caption = 'Departamento'
      end
      object RLLabel4: TRLLabel
        Left = 192
        Top = 6
        Width = 47
        Height = 16
        Caption = 'Fun'#231#227'o'
      end
      object RLLabel5: TRLLabel
        Left = 264
        Top = 6
        Width = 85
        Height = 16
        Caption = 'Nome Fun'#231#227'o'
      end
      object RLLabel6: TRLLabel
        Left = 448
        Top = 6
        Width = 38
        Height = 16
        Caption = 'Nome'
      end
      object RLLabel7: TRLLabel
        Left = 608
        Top = 6
        Width = 93
        Height = 16
        Caption = 'Data Admiss'#227'o'
      end
      object RLLabel8: TRLLabel
        Left = 736
        Top = 6
        Width = 44
        Height = 16
        Caption = 'Sal'#225'rio'
      end
      object RLLabel9: TRLLabel
        Left = 824
        Top = 6
        Width = 62
        Height = 16
        Caption = 'Comiss'#227'o'
      end
    end
    object RLDetailGrid1: TRLDetailGrid
      Left = 38
      Top = 145
      Width = 1047
      Height = 32
      object RLDBText1: TRLDBText
        Left = 8
        Top = 11
        Width = 85
        Height = 16
        DataField = 'id_empregado'
        DataSource = DMEmpregados.DS
        Text = ''
      end
      object RLDBText2: TRLDBText
        Left = 87
        Top = 11
        Width = 111
        Height = 16
        DataField = 'cod_departamento'
        DataSource = DMEmpregados.DS
        Text = ''
      end
      object RLDBText3: TRLDBText
        Left = 192
        Top = 11
        Width = 102
        Height = 16
        DataField = 'cod_emp_funcao'
        DataSource = DMEmpregados.DS
        Text = ''
      end
      object RLDBText4: TRLDBText
        Left = 263
        Top = 11
        Width = 67
        Height = 16
        DataField = 'nm_funcao'
        DataSource = DMEmpregados.DS
        Text = ''
      end
      object RLDBText5: TRLDBText
        Left = 448
        Top = 11
        Width = 93
        Height = 16
        DataField = 'nm_empregado'
        DataSource = DMEmpregados.DS
        Text = ''
      end
      object RLDBText6: TRLDBText
        Left = 608
        Top = 11
        Width = 92
        Height = 16
        DataField = 'data_admissao'
        DataSource = DMEmpregados.DS
        Text = ''
      end
      object RLDBText7: TRLDBText
        Left = 736
        Top = 11
        Width = 42
        Height = 16
        DataField = 'salario'
        DataSource = DMEmpregados.DS
        Text = ''
      end
      object RLDBText8: TRLDBText
        Left = 824
        Top = 11
        Width = 60
        Height = 16
        DataField = 'comissao'
        DataSource = DMEmpregados.DS
        Text = ''
      end
    end
  end
end
