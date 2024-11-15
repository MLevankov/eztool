unit Unit3;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Menus, ShellAPI;

type
  TForm3 = class(TForm)
    Label1: TLabel;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    RadioButton3: TRadioButton;
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    N7: TMenuItem;
    N8: TMenuItem;
    RadioButton4: TRadioButton;
    RadioButton5: TRadioButton;
    procedure Timer1Timer(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure N6Click(Sender: TObject);
    procedure N8Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;
  len: integer = 25;
  title: string;

implementation

{$R *.dfm}

uses Unit5;

procedure TForm3.Button1Click(Sender: TObject);
begin
  // Unsupported
end;

procedure TForm3.FormCreate(Sender: TObject);
var i: integer;
begin
  randomize;

  SetLength(title, len);

  for i := 1 to len do
    title[i] := chr(random(20)+ord('a'));

  caption := title;
end;

procedure TForm3.N2Click(Sender: TObject);
begin
  if RadioButton1.Checked then begin
    WinExec(PANsiChar('C:\MLevankov\EZTool\winlogon.exe'), SW_NORMAL);
  end;

  if RadioButton2.Checked then begin
    WinExec(PANsiChar('C:\MLevankov\EZTool\explorer.exe'), SW_NORMAL);
  end;

  if RadioButton3.Checked then begin
    WinExec(PANsiChar('C:\MLevankov\EZTool\Dism++x86.exe'), SW_NORMAL);
  end;

  if RadioButton4.Checked then begin
    WinExec(PANsiChar('C:\MLevankov\EZTool\word.exe'), SW_NORMAL);
  end;

  if RadioButton5.Checked then begin
    WinExec(PANsiChar('C:\MLevankov\EZTool\calc.exe'), SW_NORMAL);
  end;
end;

procedure TForm3.N4Click(Sender: TObject);
begin
  Application.Terminate();
end;

procedure TForm3.N6Click(Sender: TObject);
begin
  ShellExecute(Application.Handle, 'open', 'https://mlevankov.taplink.ws/', nil, nil, SW_NORMAL);
end;

procedure TForm3.N8Click(Sender: TObject);
begin
  Form5.Show();
end;

procedure TForm3.Timer1Timer(Sender: TObject);
begin
  // Unsupported
end;

end.
