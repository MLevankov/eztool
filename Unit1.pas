unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Registry;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Button1: TButton;
    Button3: TButton;
    Button5: TButton;
    Button2: TButton;
    Button6: TButton;
    Button7: TButton;
    OpenDialog1: TOpenDialog;
    Button4: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  len: integer = 25;
  title: string;
  cureitHWnd: HWND;

implementation

{$R *.dfm}

uses Unit3, Unit5, Unit6, Unit7, Unit8, Unit10;

procedure TForm1.Button1Click(Sender: TObject);
begin
  Button1.Enabled := false;
  Button2.Enabled := false;
  Button3.Enabled := false;
  Button4.Enabled := false;
  Button5.Enabled := false;
  Button6.Enabled := false;
  Button7.Enabled := false;

  Form6.Show();
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  Button1.Enabled := false;
  Button2.Enabled := false;
  Button3.Enabled := false;
  Button4.Enabled := false;
  Button5.Enabled := false;
  Button6.Enabled := false;
  Button7.Enabled := false;

  Form7.Show();
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  Button1.Enabled := false;
  Button2.Enabled := false;
  Button3.Enabled := false;
  Button4.Enabled := false;
  Button5.Enabled := false;
  Button6.Enabled := false;
  Button7.Enabled := false;

  Form3.Show();
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
  Button1.Enabled := false;
  Button2.Enabled := false;
  Button3.Enabled := false;
  Button4.Enabled := false;
  Button5.Enabled := false;
  Button6.Enabled := false;
  Button7.Enabled := false;

  Form10.Show();
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
  Button1.Enabled := false;
  Button2.Enabled := false;
  Button3.Enabled := false;
  Button4.Enabled := false;
  Button5.Enabled := false;
  Button6.Enabled := false;
  Button7.Enabled := false;

  Form5.Show();
end;

procedure TForm1.Button6Click(Sender: TObject);
begin
  Button1.Enabled := false;
  Button2.Enabled := false;
  Button3.Enabled := false;
  Button4.Enabled := false;
  Button5.Enabled := false;
  Button6.Enabled := false;
  Button7.Enabled := false;

  Form8.Show();
end;

procedure TForm1.Button7Click(Sender: TObject);
var reg: TRegistry;
begin
  Button1.Enabled := false;
  Button2.Enabled := false;
  Button3.Enabled := false;
  Button4.Enabled := false;
  Button5.Enabled := false;
  Button6.Enabled := false;
  Button7.Enabled := false;

  OpenDialog1.Execute();

  WinExec(PAnsiChar('taskkill /f /im explorer.exe'), SW_HIDE);

  reg := TRegistry.Create(KEY_WRITE or KEY_WOW64_64KEY);

  reg.RootKey := HKEY_CURRENT_USER;
  reg.OpenKey('SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer', true);

  reg.DeleteValue('NoChangingWallpaper');

  reg.CloseKey();
  reg.Free();

  SystemParametersInfo(SPI_SETDESKWALLPAPER, 0, PChar(OpenDialog1.FileName), SPIF_UPDATEINIFILE or SPIF_SENDCHANGE);

  WinExec(PAnsiChar('explorer.exe'), SW_NORMAL);

  ShowMessage('Обои успешно изменены!');

  Button1.Enabled := true;
  Button2.Enabled := true;
  Button3.Enabled := true;
  Button4.Enabled := true;
  Button5.Enabled := true;
  Button6.Enabled := true;
  Button7.Enabled := true;
end;

procedure TForm1.FormCreate(Sender: TObject);
var i: integer;
begin
  randomize;

  SetLength(title, len);

  for i := 1 to len do
    title[i] := chr(random(20)+ord('a'));

  caption := title;
end;

end.
