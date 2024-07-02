unit Forms.Main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB,
  Database.DataSource.DemoDatabase, Codolex.Components.Project,
  Codolex.Components.VirtualDataSet, Codolex.Components.DataSet, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, FireDAC.UI.Intf, FireDAC.VCLUI.Wait,
  FireDAC.Stan.Intf, FireDAC.Comp.UI;

type
  TfrmMain = class(TForm)
    lblCustomers: TLabel;
    dbCustomersDirect: TDBGrid;
    datasetCustomersDirect: TCodolexDataSet;
    CPDemoDatabase: TCodolexProject;
    datasetCustomersDirectCustomerID: TStringField;
    datasetCustomersDirectCompanyName: TStringField;
    datasetCustomersDirectContactName: TStringField;
    datasetCustomersDirectContactTitle: TStringField;
    datasetCustomersDirectAddress: TStringField;
    datasetCustomersDirectCity: TStringField;
    datasetCustomersDirectRegion: TStringField;
    datasetCustomersDirectPostalCode: TStringField;
    datasetCustomersDirectCountry: TStringField;
    datasetCustomersDirectPhone: TStringField;
    datasetCustomersDirectFax: TStringField;
    dsCustomersDirect: TDataSource;
    btnOpenCustomersDirect: TButton;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    dbCustomersViaFlow: TDBGrid;
    lblCustomersViaFlow: TLabel;
    btnOpenCustomersViaFlow: TButton;
    dsCustomersViaFlow: TDataSource;
    datasetCustomersViaFlow: TCodolexDataSet;
    gbDatabaseFunctionality: TGroupBox;
    lblSearchCustomer: TLabel;
    edSearchCustomerName: TEdit;
    btnSearchCustomerByName: TButton;
    Label1: TLabel;
    btnStartAndRollback: TButton;
    btnCreateAndSaveEmployee: TButton;
    lblCreateAndSaveEmployee: TLabel;
    lblCustomCommand: TLabel;
    btnCustomSQL: TButton;
    procedure btnOpenCustomersDirectClick(Sender: TObject);
    procedure datasetCustomersViaFlowLoadFromFlow(Sender: TObject);
    procedure btnOpenCustomersViaFlowClick(Sender: TObject);
    procedure btnSearchCustomerByNameClick(Sender: TObject);
    procedure btnStartAndRollbackClick(Sender: TObject);
    procedure btnCreateAndSaveEmployeeClick(Sender: TObject);
    procedure btnCustomSQLClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMain: TfrmMain;

implementation

uses
  Database.Default.Customers, Database.Default.Employees, Database.Default.Employees.Interfaces, Database.Default.Custom;

{$R *.dfm}

procedure TfrmMain.btnCustomSQLClick(Sender: TObject);
begin
  var TotalCustomers := TCustom.CustomSQL();
  ShowMessage('There are ' + TotalCustomers.ToString + ' customers in the database');
end;

procedure TfrmMain.btnOpenCustomersDirectClick(Sender: TObject);
begin
  datasetCustomersDirect.Open;
end;

procedure TfrmMain.btnOpenCustomersViaFlowClick(Sender: TObject);
begin
  datasetCustomersViaFlow.Open;
end;

procedure TfrmMain.datasetCustomersViaFlowLoadFromFlow(Sender: TObject);
begin
  var CustomersList := TCustomers.GetAllCustomers();
  datasetCustomersViaFlow.LoadEntities<Database.DataSource.DemoDatabase.ICustomers>(CustomersList);
end;

procedure TfrmMain.btnSearchCustomerByNameClick(Sender: TObject);
begin
  var CustomerName := edSearchCustomerName.Text;
  try
    var Customer := TCustomers.SearchCustomer(CustomerName);
    ShowMessage('Found! Customer ID is ' + Customer.CustomerID);
  except
    on e:exception do
    begin
      ShowMessage(e.Message);
    end;
  end;
end;

procedure TfrmMain.btnStartAndRollbackClick(Sender: TObject);
begin
  var Employees: IEmployees := TEmployees.Create;
  Employees.StartAndRollback();
end;

procedure TfrmMain.btnCreateAndSaveEmployeeClick(Sender: TObject);
begin
  var Employees: IEmployees := TEmployees.Create;
  Employees.CreateAndSaveEmployee();
end;

end.
