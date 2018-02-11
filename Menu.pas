unit Menu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, jpeg, Mask, StdCtrls, Buttons;

type
  TuMenu = class(TForm)
    imgEntrada: TImage;
    lblUsuario: TLabel;
    lblSenha: TLabel;
    txtUsuario: TEdit;
    mtxtSenha: TMaskEdit;
    sbtnEntrar: TSpeedButton;
    sbtnLimpar: TSpeedButton;
    sbtnSair: TSpeedButton;
    sbtnAdicionarusuario: TSpeedButton;
    procedure sbtnEntrarClick(Sender: TObject);
    procedure sbtnLimparClick(Sender: TObject);
    procedure sbtnSairClick(Sender: TObject);
    procedure mtxtSenhaKeyPress(Sender: TObject; var Key: Char);
    procedure txtUsuarioKeyPress(Sender: TObject; var Key: Char);
    procedure sbtnAdicionarusuarioClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  uMenu: TuMenu;

implementation

uses Unit1, uUsuarios, u_BD_estoque;

{$R *.dfm}

procedure TuMenu.sbtnEntrarClick(Sender: TObject);
begin
  if(txtusuario.Text = DM.TB_loginNOME.AsString) and (mtxtsenha.Text = DM.TB_loginSENHA.AsString) then begin
    F_estoque.ShowModal;
    txtusuario.Text := '';
    mtxtsenha.Text := '';
    txtusuario.SetFocus;
  end
  else begin
    messagebox(0,'Usuario ou senha inválidos', 'Erro de login',0);
    txtusuario.Text := '';
    mtxtsenha.Text := '';
    txtusuario.SetFocus;
  end;
end;

procedure TuMenu.sbtnLimparClick(Sender: TObject);
begin
  txtusuario.Text := '';
  mtxtsenha.Text := '';
  txtusuario.SetFocus;
end;

procedure TuMenu.sbtnSairClick(Sender: TObject);
begin
 Close;
end;

procedure TuMenu.mtxtSenhaKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    sbtnEntrar.Click;
end;

procedure TuMenu.txtUsuarioKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    sbtnEntrar.Click;
end;

procedure TuMenu.sbtnAdicionarusuarioClick(Sender: TObject);
begin
 DM.TB_login.Append;
 F_usuarios.ShowModal;
end;

end.
