object FrmMain: TFrmMain
  Left = 0
  Top = 0
  Caption = 'FrmMain'
  ClientHeight = 187
  ClientWidth = 418
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
  object btnDepartamentos: TButton
    Left = 24
    Top = 24
    Width = 169
    Height = 25
    Caption = 'Cadastro de Departamentos'
    TabOrder = 0
    OnClick = btnDepartamentosClick
  end
  object btnEmpregados: TButton
    Left = 208
    Top = 24
    Width = 169
    Height = 25
    Caption = 'Cadastro de Empregados'
    TabOrder = 1
    OnClick = btnEmpregadosClick
  end
  object Button3: TButton
    Left = 24
    Top = 72
    Width = 169
    Height = 25
    Caption = 'Relat'#243'rio de Departamentos'
    TabOrder = 2
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 208
    Top = 72
    Width = 169
    Height = 25
    Caption = 'Relat'#243'rio de Empregados'
    TabOrder = 3
    OnClick = Button4Click
  end
  object Button1: TButton
    Left = 88
    Top = 120
    Width = 241
    Height = 25
    Caption = 'Relat'#243'rio de Empregados + Departamentos'
    TabOrder = 4
    OnClick = Button1Click
  end
end
