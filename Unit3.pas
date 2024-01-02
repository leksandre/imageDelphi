unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ShellCtrls, ExtCtrls;

type
  TForm3 = class(TForm)
    ShellTreeView2: TShellTreeView;
    Panel1: TPanel;
    procedure FormCreate(Sender: TObject);
    procedure ShellTreeView2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

uses Unit1;

{$R *.dfm}

procedure TForm3.FormCreate(Sender: TObject);
begin
//form3.ShellTreeView2.Path:=ExtractFileDir(ParamStr(0));;
end;

procedure TForm3.ShellTreeView2Click(Sender: TObject);
begin
  //sleep(1000);
    form1.ShellComboBox1.Path:=ShellTreeView2.Path;
end;

end.
