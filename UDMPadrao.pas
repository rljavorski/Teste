unit UDMPadrao;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TDMPadrao = class(TDataModule)
    Qry: TFDQuery;
    DS: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMPadrao: TDMPadrao;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses UDM;

{$R *.dfm}

end.
