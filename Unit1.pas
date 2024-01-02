unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Spin, ExtCtrls, ComCtrls, ShellCtrls;

type
  TForm1 = class(TForm)
    SpinEdit1: TSpinEdit;
    SpinEdit2: TSpinEdit;
    SpinEdit3: TSpinEdit;
    SpinEdit4: TSpinEdit;
    SpinEdit5: TSpinEdit;
    Button1: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    SpinEdit6: TSpinEdit;
    ShellComboBox1: TShellComboBox;
    Button2: TButton;
    ListBox1: TListBox;
    Edit1: TEdit;
    Label6: TLabel;
    Label7: TLabel;
    Button3: TButton;
    procedure Button1Click(Sender: TObject);
    procedure searsh(dir: string);
    procedure SpinEdit2Change(Sender: TObject);
    procedure SpinEdit4Change(Sender: TObject);
    procedure SpinEdit5Change(Sender: TObject);
    procedure SpinEdit3Change(Sender: TObject);
    procedure SpinEdit1Change(Sender: TObject);
    procedure SpinEdit6Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure ListBox1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  w,h,cw,ch,coun:Integer;
implementation

uses Unit2, Math, Unit3;

{$R *.dfm}

procedure add_im(name:string);
var r:string;
begin   r:=ExtractFileExt(name);
If (r ='.jpg')or(r = '.jpeg')or(r = '.bmp')or(r = '.ico')or(r='.emf')or(r = '.wmf')
then  Form1.ListBox1.Items.Add(name); Inc(coun);
end;


procedure TForm1.Button1Click(Sender: TObject);
var
 ff:TSearchRec;
  dir_image:string;

begin   ForceDirectories(ExtractFileDir(ParamStr(0))+'\'+Edit1.Text+'\');
ListBox1.Clear;   coun:=0;
dir_image:=ExtractFileDir((ShellComboBox1.Path)+'\');
if DirectoryExists (dir_image)  then


if FindFirst(dir_image+'\*',faAnyFile,ff) = 0 then
repeat
if (ff.attr and  faDirectory)<>0 then begin
if DirectoryExists(dir_image+'\'+ff.Name+'\') and ('.' <> ff.Name)  and ('..' <> ff.Name) and ('...' <> ff.Name) and ('....' <> ff.Name)
then searsh(dir_image+'\'+ff.Name+'\') end else add_im(dir_image+'\'+ff.Name);
until FindNext(ff) <> 0;
 FindClose(ff);


 // searsh(dir_image+'\'+ff.Name+'\',temp+ff.Name+'\');
 // procedure searsh(dir: string; locdir:string);
//  ListBox1.Items[170];
 // CopyFile(Pchar(DriveLetter+':\'+ff.Name),Pchar(temp+ff.Name),true);

 Label7.Caption:=IntToStr(coun)+' imagov;  priblizitelno = '+floattostr(coun div(SpinEdit5.Value*SpinEdit6.Value)+1)+'  stranichek(a)' 
end;


procedure TForm1.searsh(dir: string);
var f,f2:TSearchRec;

   //sttime:SYSTEMTIME;
begin
FindFirst(dir+'*',faAnyFile,f);
repeat
if (f.attr and  faDirectory)<>0 then begin
Application.ProcessMessages;
if DirectoryExists(dir+f.Name+'\')and ('.' <> f.Name)  and ('..' <> f.Name) and ('...' <> f.Name) and ('....' <> f.Name)
then searsh(dir+f.Name+'\')  end  else add_im(dir+f.Name);
f2:=f;
FindNext(f);
until    (f.Name=F2.Name) and (F.Size=F2.Size);
FindClose(f);
     Application.ProcessMessages;

end;         //  CopyFile(Pchar(dir+f.Name),Pchar(locdir+'\'+f.Name),true);


procedure TForm1.SpinEdit2Change(Sender: TObject);
begin
SpinEdit4.Value:=SpinEdit2.Value div SpinEdit5.Value;
end;

procedure TForm1.SpinEdit4Change(Sender: TObject);
begin
SpinEdit5.Value:=SpinEdit2.Value div SpinEdit4.Value;
end;

procedure TForm1.SpinEdit5Change(Sender: TObject);
begin
//SpinEdit2.Value:=SpinEdit5.Value * SpinEdit4.Value;
end;

procedure TForm1.SpinEdit3Change(Sender: TObject);
begin
SpinEdit6.Value:=SpinEdit1.Value div SpinEdit3.Value;
end;

procedure TForm1.SpinEdit1Change(Sender: TObject);
begin
SpinEdit3.Value:=SpinEdit1.Value div SpinEdit6.Value;
end;

procedure TForm1.SpinEdit6Change(Sender: TObject);
begin
//SpinEdit1.Value:=SpinEdit6.Value * SpinEdit3.Value;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
//ShellComboBox1.Path:=ExtractFileDir(ParamStr(0));
end;

procedure TForm1.Button2Click(Sender: TObject);
begin    Button1.Click;
Form2.ImageSAv;
end;

procedure TForm1.ListBox1Click(Sender: TObject);
begin

end;
//Label7.Caption:=ListBox1.Items.Strings[170];
procedure TForm1.Button3Click(Sender: TObject);
begin
form3.ShowModal;
end;

end.
