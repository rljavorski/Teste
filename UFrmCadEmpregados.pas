unit UFrmCadEmpregados;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UFrmPadrao, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.ComCtrls, Vcl.Mask, Vcl.DBCtrls,
  UDMEmpregados;

type
  TFrmEmpregados = class(TFrmPadrao)
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    EdtCodigo: TEdit;
    EdtDepartamento: TEdit;
    EdtFuncao: TEdit;
    EdtNome: TEdit;
    EdtNomeFuncao: TEdit;
    EdtDataAdmissao: TEdit;
    EdtSalario: TEdit;
    EdtComissao: TEdit;
    procedure BtnPesquisaClick(Sender: TObject);
    procedure BtnExcluirClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnIncluirClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    DM : TDMEmpregados;
    { Public declarations }
  end;

var
  FrmEmpregados: TFrmEmpregados;

implementation

{$R *.dfm}

procedure TFrmEmpregados.btnAlterarClick(Sender: TObject);
begin
  inherited;
  PageControl1.ActivePageIndex := 1;
  TabCadastro.TabVisible := False;
  TabPesquisa.TabVisible := True;
  DM.Qry.Edit;
  EdtCodigo.Text := DM.Qryid_empregado.AsString;
  EdtDepartamento.Text := DM.Qrycod_departamento.AsString;
  EdtFuncao.Text := DM.Qrycod_emp_funcao.AsString;
  EdtNome.Text := DM.Qrynm_empregado.AsString;
  EdtNomeFuncao.Text := DM.Qrynm_funcao.AsString;
  EdtDataAdmissao.Text := DM.Qrydata_admissao.AsString;
  EdtSalario.Text := DM.Qrysalario.AsString;
  EdtComissao.Text := DM.Qrycomissao.AsString;
end;

procedure TFrmEmpregados.btnCancelarClick(Sender: TObject);
begin
  inherited;
  DM.Qry.Cancel;
  PageControl1.ActivePageIndex := 0;
  TabCadastro.TabVisible := False;
  TabPesquisa.TabVisible := True;
end;

procedure TFrmEmpregados.BtnExcluirClick(Sender: TObject);
begin
  inherited;
  if MessageDlg('Deseja excluir o registro código:'+DM.Qryid_empregado.AsString+'?',mtConfirmation,mbYesNo,0)= mrYes then
    DM.Qry.Delete;
end;

procedure TFrmEmpregados.btnGravarClick(Sender: TObject);
begin
  inherited;
  DM.Qryid_empregado.AsString := EdtCodigo.Text;
  DM.Qrycod_departamento.AsString := EdtDepartamento.Text;
  DM.Qrycod_emp_funcao.AsString := EdtFuncao.Text;
  DM.Qrynm_empregado.AsString := EdtNome.Text;
  DM.Qrynm_funcao.AsString := EdtNomeFuncao.Text;
  DM.Qrydata_admissao.AsString := EdtDataAdmissao.Text;
  DM.Qrysalario.AsString := EdtSalario.Text;
  DM.Qrycomissao.AsString := EdtComissao.Text;
  DM.Qry.Post;
  PageControl1.ActivePageIndex := 0;
  TabCadastro.TabVisible := False;
  TabPesquisa.TabVisible := True;
end;

procedure TFrmEmpregados.btnIncluirClick(Sender: TObject);
begin
  inherited;
  PageControl1.ActivePageIndex := 1;
  TabCadastro.TabVisible := False;
  TabPesquisa.TabVisible := True;
  DM.Qry.Insert;
  EdtCodigo.Text := '';
  EdtDepartamento.Text := '';
  EdtFuncao.Text := '';
  EdtNome.Text := '';
  EdtNomeFuncao.Text := '';
  EdtDataAdmissao.Text := '';
  EdtSalario.Text := '';
  EdtComissao.Text := '';
end;

procedure TFrmEmpregados.BtnPesquisaClick(Sender: TObject);
begin
  inherited;
  DM.Qry.Active := False;
  DM.Qry.SQL.Text := 'select * from empregados';
  if Trim(EdtPesquisa.Text) <> '' then
    DM.Qry.SQL.Text := DM.Qry.SQL.Text + ' where nm_empregado like ''%'+EdtPesquisa.Text+'%''';
  DM.Qry.Active := True;
end;

procedure TFrmEmpregados.FormShow(Sender: TObject);
begin
  inherited;
  DBGridPesquisa.DataSource := DM.DS;
end;

end.
