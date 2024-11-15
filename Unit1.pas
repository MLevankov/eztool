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
    Button4: TButton;
    Button2: TButton;
    Button6: TButton;
    Button7: TButton;
    OpenDialog1: TOpenDialog;
    procedure Timer1Timer(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  len: integer = 25;
  title: string;

implementation

{$R *.dfm}

uses Unit3, Unit4, Unit5, Unit6, Unit7, Unit8;

procedure TForm1.Button1Click(Sender: TObject);
begin
  Form6.Show();
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  Form7.Show();
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  Form3.Show();
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
  Form4.Show()
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
  Form5.Show();
end;

procedure TForm1.Button6Click(Sender: TObject);
begin
  Form8.Show();
end;

procedure TForm1.Button7Click(Sender: TObject);
var reg: TRegistry;
begin
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

procedure TForm1.Timer1Timer(Sender: TObject);
begin
  // Unsupported
end;

end.
