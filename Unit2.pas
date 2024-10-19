unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Registry,
  Vcl.Menus, ShellAPI;

type
  TForm2 = class(TForm)
    Label1: TLabel;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    CheckBox4: TCheckBox;
    CheckBox5: TCheckBox;
    CheckBox6: TCheckBox;
    Label2: TLabel;
    CheckBox7: TCheckBox;
    Label3: TLabel;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    Button1: TButton;
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    CheckBox8: TCheckBox;
    N7: TMenuItem;
    N8: TMenuItem;
    procedure Timer1Timer(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure N6Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure N8Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;
  len: integer = 25;
  title: string;

implementation

{$R *.dfm}

uses Unit5, Unit6;

procedure TForm2.Button1Click(Sender: TObject);
var reg: TRegistry;
begin
  reg := TRegistry.Create;

  if CheckBox1.Checked then begin
    reg.RootKey := HKEY_CURRENT_USER;
    reg.OpenKey('SOFTWARE\Policies\Microsoft\Windows\System', true);
    reg.DeleteValue('DisableCMD');

    reg.CloseKey();
  end;

  if CheckBox2.Checked then begin
    reg.RootKey := HKEY_CURRENT_USER;
    reg.OpenKey('SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System', true);
    reg.DeleteValue('DisableTaskMgr');

    reg.CloseKey();
  end;

  if CheckBox3.Checked then begin
    reg.RootKey := HKEY_CURRENT_USER;
    reg.OpenKey('SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer', true);
    reg.DeleteValue('NoRun');

    reg.CloseKey();
  end;

  if CheckBox4.Checked then begin
    reg.RootKey := HKEY_CURRENT_USER;
    reg.OpenKey('SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer', true);
    reg.DeleteValue('NoDrives');

    reg.CloseKey();
  end;

  if CheckBox5.Checked then begin
    reg.RootKey := HKEY_CURRENT_USER;
    reg.OpenKey('SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer', true);
    reg.DeleteValue('NoControlPanel');

    reg.CloseKey();
  end;

  if CheckBox6.Checked then begin
    reg.RootKey := HKEY_CURRENT_USER;
    reg.OpenKey('SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System', true);
    reg.DeleteValue('NoWinKeys');

    reg.CloseKey();
  end;

  if CheckBox7.Checked then begin
    reg.RootKey := HKEY_LOCAL_MACHINE;
    reg.OpenKey('SYSTEM\CurrentControlSet\Control\Keyboard Layout', true);
    reg.DeleteValue('Scancode Map');

    reg.CloseKey();
  end;

  if CheckBox8.Checked then begin
    reg.RootKey := HKEY_CURRENT_USER;
    reg.OpenKey('SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System', true);
    reg.DeleteValue('DisableRegistryTools');

    reg.CloseKey();
  end;

  if RadioButton2.Checked then begin
    WinExec(PANsiChar('shutdown /f /r /t 0'), SW_HIDE);
  end;

  reg.Free();
end;

procedure TForm2.FormCreate(Sender: TObject);
var i: integer;
begin
  randomize;

  SetLength(title, len);

  for i := 1 to len do
    title[i] := chr(random(20) + ord('a'));

  caption := title;
end;

procedure TForm2.N2Click(Sender: TObject);
begin
  Application.Terminate();
end;

procedure TForm2.N4Click(Sender: TObject);
begin
  ShellExecute(Application.Handle, 'open', 'https://mlevankov.taplink.ws/', nil, nil, SW_NORMAL);
end;

procedure TForm2.N6Click(Sender: TObject);
begin
  Form5.Show();
end;

procedure TForm2.N8Click(Sender: TObject);
begin
  Form2.Hide();
  Form6.Show();
end;

procedure TForm2.Timer1Timer(Sender: TObject);
begin
  // Unsupported
end;

end.
