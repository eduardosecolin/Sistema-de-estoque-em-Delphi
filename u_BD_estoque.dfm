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
    object TB_estoqueCODIGO: TFloatField
      FieldName = 'CODIGO'
    end
    object TB_estoquePRODUTO: TStringField
      FieldName = 'PRODUTO'
      Size = 30
    end
    object TB_estoqueFORNECEDOR: TStringField
      FieldName = 'FORNECEDOR'
      Size = 30
    end
    object TB_estoqueDATA_PAG: TStringField
      FieldName = 'DATA_PAG'
      Size = 10
    end
    object TB_estoqueDATA_VENC: TStringField
      FieldName = 'DATA_VENC'
      Size = 10
    end
    object TB_estoqueVALOR: TFloatField
      FieldName = 'VALOR'
    end
    object TB_estoqueSITUACAO: TStringField
      FieldName = 'SITUACAO'
      Size = 10
    end
  end
  object DS_estoque: TDataSource
    DataSet = TB_estoque
    Left = 152
    Top = 112
  end
  object TB_login: TTable
    DatabaseName = 
      'C:\Users\gg\Desktop\Delphi Estudos\Projetos Udemy\Sistema de Est' +
      'oque'
    TableName = 'Login'
    TableType = ttDBase
    Left = 88
    Top = 192
    object TB_loginCODIGO: TFloatField
      FieldName = 'CODIGO'
    end
    object TB_loginNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
    object TB_loginSENHA: TStringField
      FieldName = 'SENHA'
    end
  end
  object ds_login: TDataSource
    DataSet = TB_login
    Left = 152
    Top = 192
  end
end
