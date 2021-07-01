program Teste;

uses
  Vcl.Forms,
  UMain in 'UMain.pas' {FrmMain},
  UDM in 'UDM.pas' {DM: TDataModule},
  UFrmPadrao in 'UFrmPadrao.pas' {FrmPadrao},
  UDMPadrao in 'UDMPadrao.pas' {DMPadrao: TDataModule},
  UFrmCadEmpregados in 'UFrmCadEmpregados.pas' {FrmEmpregados},
  UDMEmpregados in 'UDMEmpregados.pas' {DMEmpregados: TDataModule},
  UFrmCadDepartamentos in 'UFrmCadDepartamentos.pas' {FrmDepartamentos},
  UDMDepartamentos in 'UDMDepartamentos.pas' {DMDepartamentos: TDataModule},
  URepEmpregados in 'URepEmpregados.pas' {FrmRepEmpregados},
  URepDepartamentos in 'URepDepartamentos.pas' {FrmRepDepartamentos},
  URepEmpDep in 'URepEmpDep.pas' {FrmRepEmpDep};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmMain, FrmMain);
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TFrmRepEmpDep, FrmRepEmpDep);
  Application.Run;
end.
