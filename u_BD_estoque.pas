unit u_BD_estoque;

interface

uses
  SysUtils, Classes, DB, DBTables;

type
  TDM = class(TDataModule)
    TB_estoque: TTable;
    DS_estoque: TDataSource;
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
