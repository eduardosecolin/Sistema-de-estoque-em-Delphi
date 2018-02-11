unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, Buttons, jpeg, ExtCtrls;

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
    Image1: TImage;
    sbtnAdicionar: TSpeedButton;
    sbtnConsultar: TSpeedButton;
    sbtnRemover: TSpeedButton;
    procedure Adicionar1Click(Sender: TObject);
    procedure Consultar1Click(Sender: TObject);
    procedure Fechar1Click(Sender: TObject);
    procedure Sair1Click(Sender: TObject);
    procedure Ajuda1Click(Sender: TObject);
    procedure botoesRemover();
    procedure botoesConsulta();
    procedure sbtnAdicionarClick(Sender: TObject);
    procedure sbtnConsultarClick(Sender: TObject);
    procedure sbtnRemoverClick(Sender: TObject);
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

procedure TF_estoque.botoesRemover;
begin
  F_consultar.sbtnAdicionar.Enabled := false;
  F_consultar.sbtnAlterar.Enabled := false;
  F_consultar.sbtnImprimir.Enabled := false;
  F_consultar.sbtnExcluir.Enabled := true;
end;

procedure TF_estoque.botoesConsulta;
begin
  F_consultar.sbtnAdicionar.Enabled := false;
  F_consultar.sbtnAlterar.Enabled := false;
  F_consultar.sbtnImprimir.Enabled := false;
  F_consultar.sbtnExcluir.Enabled := false;
end;

procedure TF_estoque.sbtnAdicionarClick(Sender: TObject);
begin
  DM.TB_estoque.Append;
  F_adicionar.ShowModal
end;

procedure TF_estoque.sbtnConsultarClick(Sender: TObject);
begin
  botoesConsulta;
  F_consultar.ShowModal;
end;

procedure TF_estoque.sbtnRemoverClick(Sender: TObject);
begin
 botoesRemover;
 F_consultar.ShowModal;
end;

end.
