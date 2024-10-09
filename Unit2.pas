unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Registry;

type
  TForm2 = class(TForm)
    Timer1: TTimer;
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
    procedure Timer1Timer(Sender: TObject);
    procedure Button1Click(Sender: TObject);
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

  if RadioButton2.Checked then begin
    WinExec(PANsiChar('shutdown /f /r /t 0'), SW_HIDE);
  end;

  reg.Free();
end;

procedure TForm2.Timer1Timer(Sender: TObject);
var i: integer;
begin
  randomize;

  SetLength(title, len);

  for i := 1 to len do
    title[i] := chr(random(20) + ord('a'));

  caption := title;
  sleep(500)
end;

end.
