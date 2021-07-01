object FrmRepEmpDep: TFrmRepEmpDep
  Left = 0
  Top = 0
  Caption = 'FrmRepEmpDep'
  ClientHeight = 388
  ClientWidth = 742
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
    Top = 16
    Width = 1123
    Height = 794
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    PageSetup.Orientation = poLandscape
    PreviewOptions.ShowModal = True
    object RLBand3: TRLBand
      Left = 38
      Top = 38
      Width = 1047
      Height = 83
      BandType = btTitle
      object RLLabel10: TRLLabel
        Left = 64
        Top = 24
        Width = 762
        Height = 42
        Caption = 'Relat'#243'rio de Empregados com departamentos'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -37
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
    end
    object RLBand4: TRLBand
      Left = 38
      Top = 121
      Width = 1047
      Height = 24
      BandType = btColumnHeader
      object RLLabel11: TRLLabel
        Left = 9
        Top = 6
        Width = 44
        Height = 16
        Caption = 'C'#243'digo'
      end
      object RLLabel12: TRLLabel
        Left = 88
        Top = 6
        Width = 85
        Height = 16
        Caption = 'Departamento'
      end
      object RLLabel14: TRLLabel
        Left = 543
        Top = 5
        Width = 85
        Height = 16
        Caption = 'Nome Fun'#231#227'o'
      end
      object RLLabel15: TRLLabel
        Left = 688
        Top = 6
        Width = 38
        Height = 16
        Caption = 'Nome'
      end
      object RLLabel13: TRLLabel
        Left = 212
        Top = 6
        Width = 123
        Height = 16
        Caption = 'Nome Departamento'
      end
    end
    object RLDetailGrid2: TRLDetailGrid
      Left = 38
      Top = 145
      Width = 1047
      Height = 32
      object RLDBText9: TRLDBText
        Left = 8
        Top = 11
        Width = 85
        Height = 16
        DataField = 'id_empregado'
        DataSource = DMEmpregados.DSRel
        Text = ''
      end
      object RLDBText10: TRLDBText
        Left = 87
        Top = 11
        Width = 111
        Height = 16
        DataField = 'cod_departamento'
        DataSource = DMEmpregados.DSRel
        Text = ''
      end
      object RLDBText12: TRLDBText
        Left = 543
        Top = 11
        Width = 67
        Height = 16
        DataField = 'nm_funcao'
        DataSource = DMEmpregados.DSRel
        Text = ''
      end
      object RLDBText13: TRLDBText
        Left = 687
        Top = 11
        Width = 93
        Height = 16
        DataField = 'nm_empregado'
        DataSource = DMEmpregados.DSRel
        Text = ''
      end
      object RLDBText11: TRLDBText
        Left = 212
        Top = 11
        Width = 108
        Height = 16
        DataField = 'nm_departamento'
        DataSource = DMEmpregados.DSRel
        Text = ''
      end
    end
  end
end
