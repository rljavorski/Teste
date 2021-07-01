unit UDMDepartamentos;

interface

uses
  System.SysUtils, System.Classes, UDMPadrao, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TDMDepartamentos = class(TDMPadrao)
    Qryid_departamento: TIntegerField;
    Qrynm_departamento: TWideStringField;
    Qrylocal: TWideStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMDepartamentos: TDMDepartamentos;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
