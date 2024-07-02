unit Forms.Main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmMain = class(TForm)
    btnHello: TButton;
    procedure btnHelloClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMain: TfrmMain;

implementation

uses
  HelloWorld.HelloWorld.HelloWorld;

{$R *.dfm}

procedure TfrmMain.btnHelloClick(Sender: TObject);
begin
  var HelloResult := THelloWorld.Hello();
  if HelloResult = mrOk then
    ShowMessage('Codolex rocks');
end;

end.
