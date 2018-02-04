unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus;

type
  TF_estoque = class(TForm)
    Menu: TMainMenu;
    Arquivo1: TMenuItem;
    Ajuda1: TMenuItem;
    Sair1: TMenuItem;
    Adicionar1: TMenuItem;
    Consultar1: TMenuItem;
    N1: TMenuItem;
    Fechar1: TMenuItem;
    procedure Adicionar1Click(Sender: TObject);
    procedure Consultar1Click(Sender: TObject);
    procedure Fechar1Click(Sender: TObject);
    procedure Sair1Click(Sender: TObject);
    procedure Ajuda1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_estoque: TF_estoque;

implementation

uses AddProduto, uConsultar, uAjuda, u_BD_estoque;

{$R *.dfm}

procedure TF_estoque.Adicionar1Click(Sender: TObject);
begin
   DM.TB_estoque.Append;
   F_adicionar.ShowModal
end;

procedure TF_estoque.Consultar1Click(Sender: TObject);
begin
   F_consultar.ShowModal;
end;

procedure TF_estoque.Fechar1Click(Sender: TObject);
begin
   F_estoque.Close;
end;

procedure TF_estoque.Sair1Click(Sender: TObject);
begin
  F_estoque.Close;
end;

procedure TF_estoque.Ajuda1Click(Sender: TObject);
begin
  F_Ajuda.Showmodal;
end;

end.
