unit u_BD_estoque;

interface

uses
  SysUtils, Classes, DB, DBTables;

type
  TDM = class(TDataModule)
    TB_estoque: TTable;
    DS_estoque: TDataSource;
    TB_estoqueCODIGO: TFloatField;
    TB_estoquePRODUTO: TStringField;
    TB_estoqueFORNECEDOR: TStringField;
    TB_estoqueDATA_PAG: TStringField;
    TB_estoqueDATA_VENC: TStringField;
    TB_estoqueVALOR: TFloatField;
    TB_estoqueSITUACAO: TStringField;
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM: TDM;

implementation

{$R *.dfm}

procedure TDM.DataModuleCreate(Sender: TObject);
begin
 TB_estoque.Open;
end;

procedure TDM.DataModuleDestroy(Sender: TObject);
begin
 TB_estoque.Close;
end;

end.
