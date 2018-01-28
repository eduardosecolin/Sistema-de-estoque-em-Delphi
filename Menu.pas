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
    procedure sbtnEntrarClick(Sender: TObject);
    procedure sbtnLimparClick(Sender: TObject);
    procedure sbtnSairClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  uMenu: TuMenu;

implementation

uses Unit1;

{$R *.dfm}

procedure TuMenu.sbtnEntrarClick(Sender: TObject);
begin
  if(txtusuario.Text = 'eduardo') and (mtxtsenha.Text = '12345') then
  //begin
    //uMenu.Destroy;
    F_estoque.ShowModal
  //end
  else
    messagebox(0,'Usuario ou senha inválidos', 'Erro de login',0);
end;

procedure TuMenu.sbtnLimparClick(Sender: TObject);
begin
  txtusuario.Text := '';
  mtxtsenha.Text := '';
  txtusuario.SetFocus;
end;

procedure TuMenu.sbtnSairClick(Sender: TObject);
begin
 uMenu.Close;
end;

end.
