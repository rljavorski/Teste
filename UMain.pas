unit UMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TFrmMain = class(TForm)
    btnDepartamentos: TButton;
    btnEmpregados: TButton;
    Button3: TButton;
    Button4: TButton;
    Button1: TButton;
    procedure btnDepartamentosClick(Sender: TObject);
    procedure btnEmpregadosClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmMain: TFrmMain;

implementation

uses uFrmCadEmpregados, uFrmCadDepartamentos, uDMEmpregados, uDMDepartamentos, udm,
  URepEmpregados, URepDepartamentos, URepEmpDep;

{$R *.dfm}

procedure TFrmMain.btnDepartamentosClick(Sender: TObject);
var lDM: TDMDepartamentos;
begin
  lDM := TDMDepartamentos.Create(nil);
  Application.CreateForm(TFrmDepartamentos,FrmDepartamentos);
  FrmDepartamentos.DM := lDM;
  FrmDepartamentos.ShowModal;
  FrmDepartamentos.Release;
  FreeAndNil(FrmDepartamentos);
  lDM.Destroy;
end;

procedure TFrmMain.btnEmpregadosClick(Sender: TObject);
var lDM: TDMEmpregados;
begin
  lDM := TDMEmpregados.Create(nil);
  Application.CreateForm(TFrmEmpregados,FrmEmpregados);
  FrmEmpregados.DM := lDM;
  FrmEmpregados.ShowModal;
  FrmEmpregados.Release;
  FreeAndNil(FrmEmpregados);
  lDM.Destroy;
end;

procedure TFrmMain.Button1Click(Sender: TObject);
var lDM: TDMEmpregados;
begin
  lDM := TDMEmpregados.Create(nil);
  Application.CreateForm(TFrmRepEmpDep,FrmRepEmpDep);
  lDM.QryRel.Active := True;
  FrmRepEmpDep.RLReport1.DataSource := lDm.DSRel;
  FrmRepEmpDep.RLReport1.PREVIEW;
  FreeAndNil(FrmRepEmpDep);
  lDM.Destroy;
end;

procedure TFrmMain.Button3Click(Sender: TObject);
var lDM: TDMDepartamentos;
begin
  lDM := TDMDepartamentos.Create(nil);
  Application.CreateForm(TFrmRepDepartamentos,FrmRepDepartamentos);
  lDM.Qry.Active := True;
  FrmRepDepartamentos.RLReport1.DataSource := lDm.DS;
  FrmRepDepartamentos.RLReport1.PREVIEW;
  FreeAndNil(FrmRepDepartamentos);
  lDM.Destroy;
end;

procedure TFrmMain.Button4Click(Sender: TObject);
var lDM: TDMEmpregados;
begin
  lDM := TDMEmpregados.Create(nil);
  Application.CreateForm(TFrmRepEmpregados,FrmRepEmpregados);
  lDM.Qry.Active := True;
  FrmRepEmpregados.RLReport1.DataSource := lDm.DS;
  FrmRepEmpregados.RLReport1.PREVIEW;
  FreeAndNil(FrmRepEmpregados);
  lDM.Destroy;
end;

procedure TFrmMain.FormShow(Sender: TObject);
begin
  DM.Conexao.Connected := True;
end;

end.
