unit UFrmCadDepartamentos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UFrmPadrao, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.ComCtrls, Vcl.Mask, Vcl.DBCtrls,UDMDepartamentos;

type
  TFrmDepartamentos = class(TFrmPadrao)
    Label2: TLabel;
    Label3: TLabel;
    Local: TLabel;
    EdtCodigo: TEdit;
    EdtNome: TEdit;
    EdtLocal: TEdit;
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
    DM: TDMDepartamentos;
    { Public declarations }
  end;

var
  FrmDepartamentos: TFrmDepartamentos;

implementation

{$R *.dfm}

procedure TFrmDepartamentos.btnAlterarClick(Sender: TObject);
begin
  inherited;
  PageControl1.ActivePageIndex := 1;
  TabCadastro.TabVisible := False;
  TabPesquisa.TabVisible := True;
  DM.Qry.Edit;
  EdtCodigo.Text := DM.Qryid_departamento.AsString;
  EdtNome.Text := DM.Qrynm_departamento.AsString;
  EdtLocal.Text := DM.Qrylocal.AsString;
end;

procedure TFrmDepartamentos.btnCancelarClick(Sender: TObject);
begin
  inherited;
  DM.Qry.Cancel;
  PageControl1.ActivePageIndex := 0;
  TabCadastro.TabVisible := False;
  TabPesquisa.TabVisible := True;
end;

procedure TFrmDepartamentos.BtnExcluirClick(Sender: TObject);
begin
  inherited;
  if MessageDlg('Deseja excluir o registro codigo:'+DM.Qryid_departamento.AsString+'?',mtConfirmation,mbYesNo,0)= mrYes then
    DM.Qry.Delete;
end;

procedure TFrmDepartamentos.btnGravarClick(Sender: TObject);
begin
  inherited;
  DM.Qryid_departamento.AsString := EdtCodigo.Text;
  DM.Qrynm_departamento.AsString := EdtNome.Text;
  DM.Qrylocal.AsString           := EdtLocal.Text;
  DM.Qry.Post;
  PageControl1.ActivePageIndex := 0;
  TabCadastro.TabVisible := False;
  TabPesquisa.TabVisible := True;
end;

procedure TFrmDepartamentos.btnIncluirClick(Sender: TObject);
begin
  inherited;
  PageControl1.ActivePageIndex := 1;
  TabCadastro.TabVisible := False;
  TabPesquisa.TabVisible := True;
  DM.Qry.Insert;
  EdtCodigo.Text := '';
  EdtNome.Text := '';
  EdtLocal.Text := '';
end;

procedure TFrmDepartamentos.BtnPesquisaClick(Sender: TObject);
begin
  inherited;
  DM.Qry.Active := False;
  DM.Qry.SQL.Text := 'select * from departamentos';
  if Trim(EdtPesquisa.Text) <> '' then
    DM.Qry.SQL.Text := DM.Qry.SQL.Text + ' where nm_departamento like ''%'+EdtPesquisa.Text+'%''';
  DM.Qry.Active := True;
end;

procedure TFrmDepartamentos.FormShow(Sender: TObject);
begin
  inherited;
  pageControl1.ActivePageIndex := 0;
  DBGridPesquisa.DataSource := DM.DS;
end;

end.
