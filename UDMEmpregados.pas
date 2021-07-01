unit UDMEmpregados;

interface

uses
  System.SysUtils, System.Classes, UDMPadrao, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TDMEmpregados = class(TDMPadrao)
    Qryid_empregado: TIntegerField;
    Qrycod_departamento: TIntegerField;
    Qrycod_emp_funcao: TIntegerField;
    Qrynm_empregado: TWideStringField;
    Qrynm_funcao: TWideStringField;
    Qrydata_admissao: TDateField;
    Qrysalario: TFMTBCDField;
    Qrycomissao: TFMTBCDField;
    QryRel: TFDQuery;
    DSRel: TDataSource;
    QryRelid_empregado: TIntegerField;
    QryRelcod_departamento: TIntegerField;
    QryRelcod_emp_funcao: TIntegerField;
    QryRelnm_empregado: TWideStringField;
    QryRelnm_funcao: TWideStringField;
    QryReldata_admissao: TDateField;
    QryRelsalario: TFMTBCDField;
    QryRelcomissao: TFMTBCDField;
    QryRelnm_departamento: TWideStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMEmpregados: TDMEmpregados;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
