unit uAlterarUsuario;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, jpeg, ExtCtrls, StdCtrls;

type
  TF_alterarUsuario = class(TForm)
    lblCodigo: TLabel;
    lblNome: TLabel;
    lblSenha: TLabel;
    txtNome: TEdit;
    txtSenha: TEdit;
    txtCodigo: TEdit;
    Image1: TImage;
    sbtnGravar: TSpeedButton;
    sbtnLimpar: TSpeedButton;
    sbtnVoltar: TSpeedButton;
    procedure sbtnGravarClick(Sender: TObject);
    procedure sbtnLimparClick(Sender: TObject);
    procedure sbtnVoltarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_alterarUsuario: TF_alterarUsuario;

implementation

uses u_BD_estoque;

{$R *.dfm}

procedure TF_alterarUsuario.sbtnGravarClick(Sender: TObject);
begin
 DM.TB_login.Edit;
 DM.TB_login.FieldByName('CODIGO').AsInteger := StrToInt(txtCodigo.Text);
 DM.TB_login.FieldByName('NOME').AsString := txtNome.Text;
 DM.TB_login.FieldByName('SENHA').AsString := txtSenha.Text;
 DM.TB_login.Post;
 ShowMessage('Usuário Alterado com Sucesso!!!');
end;

procedure TF_alterarUsuario.sbtnLimparClick(Sender: TObject);
begin
 txtCodigo.Clear;
 txtNome.Clear;
 txtSenha.Clear;
 txtCodigo.SetFocus;
end;

procedure TF_alterarUsuario.sbtnVoltarClick(Sender: TObject);
begin
  F_alterarUsuario.close;
end;

end.
