program Sistema_Estoque;

uses
  Forms,
  u_Entrada in 'u_Entrada.pas' {F_entrada},
  u_Menu in 'imagens\u_Menu.pas' {F_menu};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TF_entrada, F_entrada);
  Application.CreateForm(TF_menu, F_menu);
  Application.Run;
end.
