unit u_Alterar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, Mask, StdCtrls;

type
  TF_alterar = class(TForm)
    lblCodigo: TLabel;
    lblProduto: TLabel;
    lblFornecedor: TLabel;
    lblDtPagamento: TLabel;
    lblDtVencimento: TLabel;
    lblValor: TLabel;
    lblSituacao: TLabel;
    txtCodigo: TEdit;
    txtProduto: TEdit;
    txtFornecedor: TEdit;
    txtValor: TEdit;
    txtSituacao: TEdit;
    txtDtPag: TMaskEdit;
    txtDtVenc: TMaskEdit;
    sbtnGravar: TSpeedButton;
    sbtnLimpar: TSpeedButton;
    sbntVoltar: TSpeedButton;
    procedure sbtnLimparClick(Sender: TObject);
    procedure sbntVoltarClick(Sender: TObject);
    procedure sbtnGravarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_alterar: TF_alterar;

implementation

uses u_BD_estoque;

{$R *.dfm}

procedure TF_alterar.sbtnLimparClick(Sender: TObject);
begin
 txtCodigo.Clear;
 txtProduto.Clear;
 txtFornecedor.Clear;
 txtDtPag.Clear;
 txtDtVenc.Clear;
 txtValor.Clear;
 txtSituacao.Clear;
 txtCodigo.SetFocus;
end;

procedure TF_alterar.sbntVoltarClick(Sender: TObject);
begin
 F_alterar.Close;
end;

procedure TF_alterar.sbtnGravarClick(Sender: TObject);
begin
  DM.TB_estoque.Edit;
  DM.TB_estoque.FieldByName('CODIGO').AsInteger := StrToInt(txtCodigo.Text);
  DM.TB_estoque.FieldByName('PRODUTO').AsString := txtProduto.Text;
  DM.TB_estoque.FieldByName('FORNECEDOR').AsString := txtFornecedor.Text;
  DM.TB_estoque.FieldByName('DATA_PAG').AsString := txtDtPag.Text;
  DM.TB_estoque.FieldByName('DATA_VENC').AsString := txtDtVenc.Text;
  DM.TB_estoque.FieldByName('VALOR').AsFloat := StrToFloat(txtValor.Text);
  DM.TB_estoque.FieldByName('SITUACAO').AsString := txtSituacao.Text;
  DM.TB_estoque.Post;
  ShowMessage('Registro alterado com sucesso!!!');
end;

end.
