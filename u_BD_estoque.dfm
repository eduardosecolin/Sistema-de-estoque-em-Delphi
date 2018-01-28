object DM: TDM
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Left = 675
  Top = 331
  Height = 616
  Width = 959
  object TB_estoque: TTable
    DatabaseName = 
      'C:\Users\gg\Desktop\Delphi Estudos\Projetos Udemy\Sistema de Est' +
      'oque'
    TableName = 'Estoque'
    TableType = ttDBase
    Left = 88
    Top = 112
  end
  object DS_estoque: TDataSource
    DataSet = TB_estoque
    Left = 152
    Top = 112
  end
end
