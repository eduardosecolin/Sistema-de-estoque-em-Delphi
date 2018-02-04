program Sistema_Estoque;

uses
  Forms,
  u_Entrada in 'u_Entrada.pas' {F_entrada},
  Unit1 in 'Unit1.pas' {F_estoque},
  Menu in 'Menu.pas' {uMenu},
  AddProduto in 'AddProduto.pas' {F_adicionar},
  uConsultar in 'uConsultar.pas' {F_consultar},
  uAjuda in 'uAjuda.pas' {F_Ajuda},
  u_BD_estoque in 'u_BD_estoque.pas' {DM: TDataModule},
  u_Excluir in 'u_Excluir.pas' {F_excluir},
  u_Alterar in 'u_Alterar.pas' {F_alterar};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TF_entrada, F_entrada);
  Application.CreateForm(TF_estoque, F_estoque);
  Application.CreateForm(TuMenu, uMenu);
  Application.CreateForm(TF_adicionar, F_adicionar);
  Application.CreateForm(TF_consultar, F_consultar);
  Application.CreateForm(TF_Ajuda, F_Ajuda);
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TF_excluir, F_excluir);
  Application.CreateForm(TF_alterar, F_alterar);
  Application.Run;
end.
