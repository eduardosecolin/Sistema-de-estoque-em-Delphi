unit uUsuarios;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, jpeg, ExtCtrls, StdCtrls;

type
  TF_usuarios = class(TForm)
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
    procedure sbtnVoltarClick(Sender: TObject);
    procedure sbtnLimparClick(Sender: TObject);
    procedure sbtnGravarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_usuarios: TF_usuarios;

implementation

uses
u_BD_estoque;

{$R *.dfm}

procedure TF_usuarios.sbtnVoltarClick(Sender: TObject);
begin
  F_usuarios.Close;
end;

procedure TF_usuarios.sbtnLimparClick(Sender: TObject);
begin
 txtCodigo.Clear;
 txtNome.Clear;
 txtSenha.Clear;
 txtCodigo.SetFocus;
end;

procedure TF_usuarios.sbtnGravarClick(Sender: TObject);
begin
 DM.TB_login.Append;
 DM.TB_login.FieldByName('CODIGO').AsString := txtCodigo.Text;
 DM.TB_login.FieldByName('NOME').AsString := txtNome.Text;
 DM.TB_login.FieldByName('SENHA').AsString := txtSenha.Text;
 DM.TB_login.Post;
 ShowMessage('Usuário Cadastrado com Sucesso!!!');
end;

end.
