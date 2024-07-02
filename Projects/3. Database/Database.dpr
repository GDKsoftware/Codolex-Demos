program Database;

uses
  Vcl.Forms,
  Forms.Main in 'Forms.Main.pas' {frmMain},
  Codolex.Database.Query.Interfaces,
  Codolex.Database.Connection.FireDAC,
  Codolex.Database.Query.FireDAC,
  Codolex.Framework,
  Firedac.Phys.SQLite,
  System.SysUtils,
  Firedac.Comp.Client;

{$R *.res}

{$StrongLinkTypes ON}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;

  var FDConnection := TFDConnection.Create(nil);

  FDConnection.Params.Clear;
  FDConnection.Params.Add('Database=C:\dev\codolex-documentation\Demos\3. Database\Database\DemoDatabase.db');
  FDConnection.Params.Add('DriverID=SQLite');
  FDConnection.LoginPrompt := False;

  var Connection: TFunc<IDatabaseQuery> :=
    function: IDatabaseQuery
    begin
      var DbConnection := TDatabaseConnectionFireDAC.Create(FDConnection);

      Result := TDatabaseQueryFireDAC.Create(DbConnection);
    end;

  CodolexFramework.DatabaseQueryProvider['DemoDatabase'] := Connection;

  Application.CreateForm(TfrmMain, frmMain);
  Application.Run;
end.
