unit u_Entrada;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, jpeg, StdCtrls, ComCtrls;

type
  TF_entrada = class(TForm)
    imgEntrada: TImage;
    Timer1: TTimer;
    PB: TProgressBar;
    lbl_PorcentagemPB: TLabel;
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_entrada: TF_entrada;

implementation

uses Menu;

{$R *.dfm}

procedure TF_entrada.Timer1Timer(Sender: TObject);
begin
 PB.Position := PB.Position + 1;
 lbl_PorcentagemPB.Caption := IntToStr(PB.Position) + '%';
  if PB.Position = 100 then
 begin
   F_entrada.Destroy;
   uMenu.Show;
 end;
end;

end.
