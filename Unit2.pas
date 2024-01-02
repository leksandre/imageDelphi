unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, jpeg;

type
  TForm2 = class(TForm)
    Image1: TImage;
    procedure mode;
    procedure ImageSAv;
    procedure FormCreate(Sender: TObject);
    procedure Probl(Sender: TObject; E: Exception);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

uses Unit1;

{$R *.dfm}
procedure save_jp(folder:string; name:string);
var
  JpegIm: TJpegImage;
  //  bm: TBitMap;

begin
{bm := TBitMap.Create;
  bm.Width := Form2.Width;
  bm.Height := Form2.Height;
  BitBlt(form2.Handle, 0, 0,
  bm.Width, bm.Height,
  GetDC(0), 0, 0, SRCCOPY); }

  JpegIm := TJpegImage.Create;
  JpegIm.Assign(Form2.GetFormImage);  // bm
  JpegIm.CompressionQuality := 100;
  JpegIm.Compress;
  JpegIm.SaveToFile(folder+name+'.jpg');
//   bm.Destroy;

  JpegIm.Destroy;
end;



    procedure TForm2.mode;
     var i,j:integer;
     im:TImage;
     ip:Tpanel;
      begin     with Form1 do begin
 
 w:=SpinEdit4.Value;       
 h:=SpinEdit3.Value-1;
 ch:=SpinEdit5.value;
 cw:=SpinEdit6.Value;
 Form2.Width:=w*cw;
 Form2.Height:=h*ch;
  end;
 for i:=0 to ch-1 do for j:=0 to cw-1 do  begin
// Im:=CreateNew(TForm2.Image1,i+j);      
 { ip:=Tpanel.Create(Form2);
   ip.Parent:=Form2;

 ip.Height:=h;
 ip.Width:=w;
 ip.Top:=h*i;
 ip.Left:=w*j;     }
///////////////////////////

  im:=Timage.Create(form2); //    (ip);
 im.Parent:=form2;//      ip;
  // im.Center:=true;
 im.Proportional:=true;
  //im.AutoSize:=true;
       sleep(10);
 im.Top:=h*i; //     0;
 im.Left:=w*j;  //      0;
 {im.Width:=w;}
 im.ShowHint:=true;
 im.Stretch:=true;
 im.Height:=h;
  
// im.Hint:=inttostr(im.ComponentIndex)+' '+inttostr(im.Picture.Bitmap.Width)+'_'+inttostr(im.Picture.Height);

      ////////////////
   //   ip.AutoSize:=true;
      /////////////////
                  {
ip.Align:=alLeft;
ip.Align:=alTop;
ip.Align:=alNone;}

 //im.Picture.LoadFromFile('C:\Documents and Settings\AL\Рабочий стол\image\attachment1230.jpeg');
Application.ProcessMessages;{sleep (1000); } end;    end;

procedure TForm2.ImageSav;
  var   i,j,k,h2 : integer;  num:string ;  names:string ;  d:Timage;
   fp:TextFile;
begin     //0
 h2:=form1.SpinEdit3.Value-1;

mode; k:=0;  names:=Form1.Edit1.Text; j:=0;     num:='0';
                                               form2.Show;
while j+1<Form1.ListBox1.Items.Count do   begin  //1
for i :=0 to Form2.ComponentCount-1 do               begin  //2
  sleep(10);                // getInterface(Iimage,d)
// if Form2.Components[i].ClassType=TImage  then begin  //3
d:=Form2.Components[i]{.Components[0]} as TImage;     inc(j);
//d.AutoSize:=True; d.AutoSize:=false;
                                       try   //4
 d.Picture.LoadFromFile(Form1.ListBox1.Items[j]);  finally    
  AssignFile(fp,'log.txt');
  Rewrite(fp);           if (j>=2) and (j+2<Form1.ListBox1.Items.Count) then     begin   //5
  Writeln(fp,Form1.ListBox1.Items[j-2]);
  Writeln(fp,Form1.ListBox1.Items[j-1]);
  Writeln(fp,Form1.ListBox1.Items[j]);
  Writeln(fp,Form1.ListBox1.Items[j+1]);
  Writeln(fp,Form1.ListBox1.Items[j+2]); end  //5
  else   Writeln(fp,Form1.ListBox1.Items[j]);
   Writeln(fp,'  _'+inttostr(j)+'_  ');
  CloseFile(fp);
 end; //4    try
        Application.ProcessMessages;          //    end //3
//d.hint:=d.hint+'_123_';
//d.Align:=alTop;
//d.Align:=alLeft;
d.AutoSize:=true; d.AutoSize:=False; d.Height:=h2;
 d.Hint:= inttostr(d.ClientWidth
 //);
 //ClientWidth.PixelsPerInch) ;

//inttostr(d.ComponentIndex)+' '++'_'+inttostr(d.Picture.Graphic.Height);

                                                          end; //2
while fileExists( ExtractFileDir(ParamStr(0))+'\'+names+'\'+names+num+'.jpg' ) do begin inc(k); num:=inttostr(k); end; //6 //6
save_jp(ExtractFileDir(ParamStr(0))+'\'+names+'\',names+num);
                                       end;  //1

                 form2.Close;
end;   //0

Procedure TForm2.probl(Sender: TObject; E: Exception);
begin
 // If E is 34h then
    MessageDlg('Перехвачено исключение', mtInformation, [mbOk], 0)
 // else

end;

procedure TForm2.FormCreate(Sender: TObject);
begin
w:=Form2.Width;h:=Form2.Height;

Application.OnException := probl;

end;




procedure TForm2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 save_jp(ExtractFileDir(ParamStr(0))+'\'+Form1.Edit1.Text+'\','onClose');
end;

end.
