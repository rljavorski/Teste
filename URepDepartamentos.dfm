object FrmRepDepartamentos: TFrmRepDepartamentos
  Left = 0
  Top = 0
  Caption = 'FrmRepDepartamentos'
  ClientHeight = 490
  ClientWidth = 732
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
    Left = 8
    Top = 8
    Width = 794
    Height = 1123
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    object RLBand1: TRLBand
      Left = 38
      Top = 38
      Width = 718
      Height = 83
      BandType = btTitle
      object RLLabel1: TRLLabel
        Left = 192
        Top = 24
        Width = 467
        Height = 42
        Caption = 'Relat'#243'rio de Departamentos'
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
      Width = 718
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
        Left = 208
        Top = 6
        Width = 38
        Height = 16
        Caption = 'Nome'
      end
      object RLLabel4: TRLLabel
        Left = 552
        Top = 6
        Width = 35
        Height = 16
        Caption = 'Local'
      end
    end
    object RLDetailGrid1: TRLDetailGrid
      Left = 38
      Top = 145
      Width = 718
      Height = 32
      object RLDBText1: TRLDBText
        Left = 8
        Top = 11
        Width = 100
        Height = 16
        DataField = 'id_departamento'
        DataSource = DMDepartamentos.DS
        Text = ''
      end
      object RLDBText2: TRLDBText
        Left = 208
        Top = 11
        Width = 108
        Height = 16
        DataField = 'nm_departamento'
        DataSource = DMDepartamentos.DS
        Text = ''
      end
      object RLDBText3: TRLDBText
        Left = 552
        Top = 11
        Width = 31
        Height = 16
        DataField = 'local'
        DataSource = DMDepartamentos.DS
        Text = ''
      end
    end
  end
end
