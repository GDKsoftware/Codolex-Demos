object frmMain: TfrmMain
  Left = 0
  Top = 0
  Caption = 'Database demo'
  ClientHeight = 969
  ClientWidth = 1279
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object lblCustomers: TLabel
    Left = 8
    Top = 8
    Width = 237
    Height = 15
    Caption = 'Customers (via direct access to the database)'
  end
  object lblCustomersViaFlow: TLabel
    Left = 639
    Top = 8
    Width = 161
    Height = 15
    Caption = 'Customers (via a custom flow)'
  end
  object dbCustomersDirect: TDBGrid
    Left = 8
    Top = 29
    Width = 625
    Height = 388
    DataSource = dsCustomersDirect
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'CustomerID'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CompanyName'
        Width = 200
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ContactName'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ContactTitle'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Address'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'City'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Region'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PostalCode'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Country'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Phone'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Fax'
        Width = 100
        Visible = True
      end>
  end
  object btnOpenCustomersDirect: TButton
    Left = 558
    Top = 423
    Width = 75
    Height = 25
    Caption = 'Open'
    TabOrder = 1
    OnClick = btnOpenCustomersDirectClick
  end
  object dbCustomersViaFlow: TDBGrid
    Left = 639
    Top = 29
    Width = 625
    Height = 388
    DataSource = dsCustomersViaFlow
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'CustomerID'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CompanyName'
        Width = 200
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ContactName'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ContactTitle'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Address'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'City'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Region'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PostalCode'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Country'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Phone'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Fax'
        Width = 100
        Visible = True
      end>
  end
  object btnOpenCustomersViaFlow: TButton
    Left = 1189
    Top = 423
    Width = 75
    Height = 25
    Caption = 'Open'
    TabOrder = 3
    OnClick = btnOpenCustomersViaFlowClick
  end
  object gbDatabaseFunctionality: TGroupBox
    Left = 8
    Top = 464
    Width = 625
    Height = 273
    Caption = 'Database related functionality'
    TabOrder = 4
    object lblSearchCustomer: TLabel
      Left = 16
      Top = 32
      Width = 137
      Height = 15
      Caption = 'Search customer by name'
    end
    object Label1: TLabel
      Left = 16
      Top = 176
      Width = 213
      Height = 15
      Caption = 'Start and rollback a database transaction'
    end
    object lblCreateAndSaveEmployee: TLabel
      Left = 16
      Top = 88
      Width = 154
      Height = 15
      Caption = 'Create and save an employee'
    end
    object lblCustomCommand: TLabel
      Left = 350
      Top = 88
      Width = 97
      Height = 15
      Caption = 'Run a custom SQL'
    end
    object edSearchCustomerName: TEdit
      Left = 176
      Top = 29
      Width = 296
      Height = 23
      BevelInner = bvSpace
      TabOrder = 0
    end
    object btnSearchCustomerByName: TButton
      Left = 488
      Top = 28
      Width = 75
      Height = 25
      Caption = 'Search...'
      TabOrder = 1
      OnClick = btnSearchCustomerByNameClick
    end
    object btnStartAndRollback: TButton
      Left = 16
      Top = 197
      Width = 213
      Height = 25
      Caption = 'Start and rollback'
      TabOrder = 2
      OnClick = btnStartAndRollbackClick
    end
    object btnCreateAndSaveEmployee: TButton
      Left = 16
      Top = 109
      Width = 213
      Height = 25
      Caption = 'Create and save an employee'
      TabOrder = 3
      OnClick = btnCreateAndSaveEmployeeClick
    end
    object btnCustomSQL: TButton
      Left = 350
      Top = 109
      Width = 213
      Height = 25
      Caption = 'Run custom SQL'
      TabOrder = 4
      OnClick = btnCustomSQLClick
    end
  end
  object datasetCustomersDirect: TCodolexDataSet
    DataEntity = 'Database.DataSource.DemoDatabase.ICustomers'
    Project = CPDemoDatabase
    Left = 536
    Top = 120
    object datasetCustomersDirectCustomerID: TStringField
      FieldName = 'CustomerID'
      Size = 100
    end
    object datasetCustomersDirectCompanyName: TStringField
      FieldName = 'CompanyName'
      Size = 100
    end
    object datasetCustomersDirectContactName: TStringField
      FieldName = 'ContactName'
      Size = 100
    end
    object datasetCustomersDirectContactTitle: TStringField
      FieldName = 'ContactTitle'
      Size = 100
    end
    object datasetCustomersDirectAddress: TStringField
      FieldName = 'Address'
      Size = 100
    end
    object datasetCustomersDirectCity: TStringField
      FieldName = 'City'
      Size = 100
    end
    object datasetCustomersDirectRegion: TStringField
      FieldName = 'Region'
      Size = 100
    end
    object datasetCustomersDirectPostalCode: TStringField
      FieldName = 'PostalCode'
      Size = 100
    end
    object datasetCustomersDirectCountry: TStringField
      FieldName = 'Country'
      Size = 100
    end
    object datasetCustomersDirectPhone: TStringField
      FieldName = 'Phone'
      Size = 100
    end
    object datasetCustomersDirectFax: TStringField
      FieldName = 'Fax'
      Size = 100
    end
  end
  object CPDemoDatabase: TCodolexProject
    CodolexProject = 'Database'
    ProjectGUID = '{1F551114-D1FE-48FA-B353-74F469C743FC}'
    Left = 536
    Top = 56
  end
  object dsCustomersDirect: TDataSource
    DataSet = datasetCustomersDirect
    Left = 536
    Top = 184
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 56
    Top = 816
  end
  object dsCustomersViaFlow: TDataSource
    DataSet = datasetCustomersViaFlow
    Left = 1200
    Top = 184
  end
  object datasetCustomersViaFlow: TCodolexDataSet
    DataKind = MultipleEntities
    DataEntity = 'Database.DataSource.DemoDatabase.ICustomers'
    Flow = 'GetAllCustomers'
    Project = CPDemoDatabase
    OnLoadFromFlow = datasetCustomersViaFlowLoadFromFlow
    FlowGUID = '{B877537F-2F4E-4B32-A29B-93394AD9FF0E}'
    Left = 1200
    Top = 120
  end
end
