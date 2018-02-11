unit uConfig_usuario;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, Buttons;

type
  TF_config_usuario = class(TForm)
    DBGrid: TDBGrid;
    sbtnAlterar: TSpeedButton;
    sbtnRemover: TSpeedButton;
    sbtnVoltar: TSpeedButton;
    procedure sbtnVoltarClick(Sender: TObject);
    procedure sbtnRemoverClick(Sender: TObject);
    procedure sbtnAlterarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_config_usuario: TF_config_usuario;

implementation

uses
 u_BD_estoque, uUsuarios, uAlterarUsuario;
{$R *.dfm}

procedure TF_config_usuario.sbtnVoltarClick(Sender: TObject);
begin
  F_config_usuario.Close;
end;

procedure TF_config_usuario.sbtnRemoverClick(Sender: TObject);
var
 escolha : integer;
begin
  escolha := MessageDlg('Tem certeza que deseja excluir o usuário?', mtConfirmation,[mbYes, mbNo],0);
  if escolha = mrYes then begin
    DM.TB_login.Edit;
    DM.TB_login.Delete;
  end;
end;

procedure TF_config_usuario.sbtnAlterarClick(Sender: TObject);
begin
  DM.TB_login.Edit;
  F_alterarUsuario.txtCodigo.Text := DM.TB_login.FieldByName('CODIGO').AsString;
  F_alterarUsuario.txtNome.Text := DM.TB_login.FieldByName('NOME').AsString;
  F_alterarUsuario.txtSenha.Text := DM.TB_login.FieldByName('SENHA').AsString;
  F_alterarUsuario.ShowModal;
end;

end.
