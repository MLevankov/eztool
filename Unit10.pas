unit Unit10;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Menus, ShellAPI;

type
  TForm10 = class(TForm)
    Label1: TLabel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: boolean);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form10: TForm10;
  len: integer = 25;
  title: string;

implementation

{$R *.dfm}

uses Unit1, Unit5;

procedure HideTaskbar; stdcall; external 'Taskbar.dll';
procedure ShowTaskbar; stdcall; external 'Taskbar.dll';
procedure RestartTaskbar; stdcall; external 'Taskbar.dll';

procedure TForm10.Button1Click(Sender: TObject);
begin
  HideTaskbar;
end;

procedure TForm10.Button2Click(Sender: TObject);
begin
  ShowTaskbar;
end;

procedure TForm10.Button3Click(Sender: TObject);
begin
  RestartTaskbar;
end;

procedure TForm10.FormCloseQuery(Sender: TObject; var CanClose: boolean);
begin
  Form1.Button1.Enabled := true;
  Form1.Button2.Enabled := true;
  Form1.Button3.Enabled := true;
  Form1.Button4.Enabled := true;
  Form1.Button5.Enabled := true;
  Form1.Button6.Enabled := true;
  Form1.Button7.Enabled := true;

  CanClose := true;
end;

procedure TForm10.FormCreate(Sender: TObject);
var i: integer;
begin
  randomize;

  SetLength(title, len);

  for i := 1 to len do
    title[i] := chr(random(20)+ord('a'));

  caption := title;
end;

procedure TForm10.N2Click(Sender: TObject);
begin
  Application.Terminate();
end;

procedure TForm10.N4Click(Sender: TObject);
begin
  ShellExecute(Application.Handle, 'open', 'https://mlevankov.taplink.ws/', nil, nil, SW_NORMAL);
end;

procedure TForm10.N6Click(Sender: TObject);
begin
  Form5.Show();
end;

end.
