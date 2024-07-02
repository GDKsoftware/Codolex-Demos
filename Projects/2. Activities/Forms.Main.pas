unit Forms.Main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Codolex.Collections;

type
  TfrmMain = class(TForm)
    pngUtils: TGroupBox;
    btnShowHomeDir: TButton;
    edPath: TEdit;
    btnValidatePath: TButton;
    pnlFileOperations: TGroupBox;
    btnCreateFile: TButton;
    mmText: TMemo;
    btnSaveToFile: TButton;
    pnlHashing: TGroupBox;
    btnGetFileHash: TButton;
    edFileHash: TEdit;
    btnCompareFileHash: TButton;
    pngVariables: TGroupBox;
    btnCreateVariable: TButton;
    btnAddToList: TButton;
    edAddToList: TEdit;
    procedure btnShowHomeDirClick(Sender: TObject);
    procedure btnValidatePathClick(Sender: TObject);
    procedure btnCreateFileClick(Sender: TObject);
    procedure btnSaveToFileClick(Sender: TObject);
    procedure btnGetFileHashClick(Sender: TObject);
    procedure btnCompareFileHashClick(Sender: TObject);
    procedure btnCreateVariableClick(Sender: TObject);
    procedure btnAddToListClick(Sender: TObject);
  private
    FListValues: ICodolexList<string>;
  public
    { Public declarations }
  end;

var
  frmMain: TfrmMain;

implementation

uses
  Activities.FileSystem.Utils, Activities.FileSystem.FileOperations, Activities.FileSystem.FileOperations.Interfaces, Activities.FileSystem.Hasing, Activities.Variables.CreateVariable, Activities.Variables.CreateVariable.Interfaces, Activities.Variables.Lists, Activities.Variables.Lists.Interfaces;

{$R *.dfm}

procedure TfrmMain.btnAddToListClick(Sender: TObject);
begin
  if FListValues = nil then
    FListValues := TLists.CreateList(FListValues);


  var ValueToAdd := edAddToList.Text;
  TLists.AddToList(FListValues, ValueToAdd);

  var GetListValuesResult := TLists.GetListValues(FListValues);
  ShowMessage(GetListValuesResult)
end;

procedure TfrmMain.btnCompareFileHashClick(Sender: TObject);
begin
  var CompareFileHashResult := THasing.CompareFileHash(edFileHash.Text);

  if not CompareFileHashResult then
    ShowMessage('Hash is not the same')
  else
    ShowMessage('Hash is the same');
end;

procedure TfrmMain.btnCreateFileClick(Sender: TObject);
begin
  var FileOperations: IFileOperations := TFileOperations.Create;
  try
    FileOperations.CreateFile;
  except
    on E: Exception do
      ShowMessage(e.Message);
  end;
end;

procedure TfrmMain.btnCreateVariableClick(Sender: TObject);
begin
  var CreateVariable: ICreateVariable := TCreateVariable.Create;
  var CreateSimpleVariableResult := CreateVariable.CreateSimpleVariable();
  ShowMessage(CreateSimpleVariableResult);
end;

procedure TfrmMain.btnGetFileHashClick(Sender: TObject);
begin
  var CheckFileHashResult := THasing.CheckFileHash;

  edFileHash.Text := CheckFileHashResult;
end;

procedure TfrmMain.btnSaveToFileClick(Sender: TObject);
begin
  var FileOperations: IFileOperations := TFileOperations.Create;
  FileOperations.SaveToFile(mmText.Lines.Text);
end;

procedure TfrmMain.btnShowHomeDirClick(Sender: TObject);
begin
  TUtils.ShowHomeDirectory();
end;

procedure TfrmMain.btnValidatePathClick(Sender: TObject);
begin
  var FilePath := edPath.Text;
  TUtils.Validation(FilePath);

  // If you want to use the result of the flow, use
  // var ValidationResult := TUtils.Validation(FilePath);
end;

end.
