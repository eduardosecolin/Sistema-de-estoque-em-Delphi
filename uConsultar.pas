unit uConsultar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, Buttons;

type
  TF_consultar = class(TForm)
    DBGrid: TDBGrid;
    sbtnAdicionar: TSpeedButton;
    sbtnAlterar: TSpeedButton;
    sbtnExcluir: TSpeedButton;
    sbtnImprimir: TSpeedButton;
    sbtnVoltar: TSpeedButton;
    procedure sbtnAdicionarClick(Sender: TObject);
    procedure sbtnVoltarClick(Sender: TObject);
    procedure sbtnAlterarClick(Sender: TObject);
    procedure sbtnExcluirClick(Sender: TObject);
    procedure sbtnImprimirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }    
  end;

var
  F_consultar: TF_consultar;

implementation

uses u_BD_estoque, AddProduto, Unit1, u_Alterar, uImprimir;

{$R *.dfm}

procedure TF_consultar.sbtnAdicionarClick(Sender: TObject);
begin
   DM.TB_estoque.Append;
   F_adicionar.ShowModal
end;

procedure TF_consultar.sbtnVoltarClick(Sender: TObject);
begin
  F_consultar.Close;
end;

procedure TF_consultar.sbtnAlterarClick(Sender: TObject);
begin
  DM.TB_estoque.Edit;
  F_alterar.txtCodigo.Text := DM.TB_estoque.FieldByName('CODIGO').AsString;
  F_alterar.txtProduto.Text := DM.TB_estoque.FieldByName('PRODUTO').AsString;
  F_alterar.txtFornecedor.Text := DM.TB_estoque.FieldByName('FORNECEDOR').AsString;
  F_alterar.txtDtPag.Text := DM.TB_estoque.FieldByName('DATA_PAG').AsString;
  F_alterar.txtDtVenc.Text := DM.TB_estoque.FieldByName('DATA_VENC').AsString;
  F_alterar.txtValor.Text := DM.TB_estoque.FieldByName('VALOR').AsString;
  F_alterar.txtSituacao.Text := DM.TB_estoque.FieldByName('SITUACAO').AsString;
  F_alterar.ShowModal;
end;

procedure TF_consultar.sbtnExcluirClick(Sender: TObject);
var
 escolha : integer;
begin
  escolha := MessageDlg('Tem certeza que deseja excluir o registro?', mtConfirmation,[mbYes, mbNo],0);
  if escolha = mrYes then begin
    DM.TB_estoque.Edit;
    DM.TB_estoque.Delete;
  end;

end;

procedure TF_consultar.sbtnImprimirClick(Sender: TObject);
begin
  F_imprimir.QuickRep1.preview;
end;

end.
