unit UFrmPadrao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Grids,
  Vcl.DBGrids, Vcl.ExtCtrls, Vcl.ComCtrls;

type
  TFrmPadrao = class(TForm)
    PageControl1: TPageControl;
    TabPesquisa: TTabSheet;
    TabCadastro: TTabSheet;
    Panel1: TPanel;
    DBGridPesquisa: TDBGrid;
    btnIncluir: TButton;
    btnAlterar: TButton;
    BtnExcluir: TButton;
    BtnPesquisa: TButton;
    EdtPesquisa: TEdit;
    Label1: TLabel;
    Panel2: TPanel;
    btnGravar: TButton;
    btnCancelar: TButton;
    procedure DBGridPesquisaDblClick(Sender: TObject);
    procedure EdtPesquisaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPadrao: TFrmPadrao;

implementation

{$R *.dfm}

procedure TFrmPadrao.DBGridPesquisaDblClick(Sender: TObject);
begin
  btnAlterar.Click;
end;
procedure TFrmPadrao.EdtPesquisaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = 13 then
    btnPesquisa.Click;
end;

procedure TFrmPadrao.FormShow(Sender: TObject);
begin
  pageControl1.ActivePageIndex := 0;
end;

end.
