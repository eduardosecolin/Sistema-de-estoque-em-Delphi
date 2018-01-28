unit uConsultar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, Buttons;

type
  TF_consultar = class(TForm)
    DBGrid: TDBGrid;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
  private
    { Private declarations }
  public
    { Public declarations }    
  end;

var
  F_consultar: TF_consultar;

implementation

{$R *.dfm}

end.
