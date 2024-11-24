unit Unit6;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Menus, ShellAPI, Registry,
  Vcl.ComCtrls;

type
  TForm6 = class(TForm)
    Label1: TLabel;
    CheckBox1: TCheckBox;
    Button1: TButton;
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    N7: TMenuItem;
    N8: TMenuItem;
    Label2: TLabel;
    ListView1: TListView;
    procedure FormCreate(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure N6Click(Sender: TObject);
    procedure N8Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form6: TForm6;
  len: integer = 25;
  title: string;

implementation

{$R *.dfm}

uses Unit1, Unit2, Unit5;

procedure TForm6.Button1Click(Sender: TObject);
var
  reg: TRegistry;
  i: integer;
begin
  reg := TRegistry.Create(KEY_READ or KEY_WRITE or KEY_WOW64_64KEY);

  ListView1.Items.Clear();

  if not CheckBox1.Checked then begin
    reg.RootKey := HKEY_CURRENT_USER;
    reg.OpenKey('SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System', true);

    if reg.ValueExists('DisableTaskMgr') then
    begin
      with ListView1.Items.Add do
      begin
        Caption := 'DisableTaskMgr';

        SubItems.Add('Блокирует диспетчер задач');
      end;
    end;

    if reg.ValueExists('DisableRegistryTools') then
    begin
      with ListView1.Items.Add do
      begin
        Caption := 'DisableRegistryTools';

        SubItems.Add('Блокирует редактор реестра');
      end;
    end;

    if reg.ValueExists('DisableSR') then
    begin
      with ListView1.Items.Add do
      begin
        Caption := 'DisableSR';

        SubItems.Add('Блокирует среду восстановления');
      end;
    end;

    if reg.ValueExists('DisableConfig') then
    begin
      with ListView1.Items.Add do
      begin
        Caption := 'DisableConfig';

        SubItems.Add('Блокирует восстановление системы');
      end;
    end;

    if reg.ValueExists('DisableChangePassword') then
    begin
      with ListView1.Items.Add do
      begin
        Caption := 'DisableChangePassword';

        SubItems.Add('Блокирует смену пароля');
      end;
    end;

    reg.CloseKey();

    reg.OpenKey('SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer', true);

    if reg.ValueExists('NoLogoff') then
    begin
      with ListView1.Items.Add do
      begin
        Caption := 'NoLogoff';

        SubItems.Add('Блокирует выход из пользователя');
      end;
    end;

    if reg.ValueExists('RestrictRun') then
    begin
      with ListView1.Items.Add do
      begin
        Caption := 'RestrictRun';

        SubItems.Add('Блокирует открытие программ');
      end;
    end;

    if reg.ValueExists('DisallowRun') then
    begin
      with ListView1.Items.Add do
      begin
        Caption := 'DisallowRun';

        SubItems.Add('Блокирует открытие некоторых программ');
      end;
    end;

    if reg.ValueExists('NoClose') then
    begin
      with ListView1.Items.Add do
      begin
        Caption := 'NoClose';

        SubItems.Add('Блокирует выключение ПК');
      end;
    end;

    if reg.ValueExists('NoWinKeys') then
    begin
      with ListView1.Items.Add do
      begin
        Caption := 'NoWinKeys';

        SubItems.Add('Блокирует горячие клавиши с кнопкой Win');
      end;
    end;

    if reg.ValueExists('NoTrayContextMenu') then
    begin
      with ListView1.Items.Add do
      begin
        Caption := 'NoTrayContextMenu';

        SubItems.Add('Блокирует контекстное меню');
      end;
    end;

    if reg.ValueExists('NoSetTaskbar') then
    begin
      with ListView1.Items.Add do
      begin
        Caption := 'NoSetTaskbar';

        SubItems.Add('Блокирует изменение параметров в Панели задач');
      end;
    end;

    if reg.ValueExists('NoControlPanel') then
    begin
      with ListView1.Items.Add do
      begin
        Caption := 'NoControlPanel';

        SubItems.Add('Блокирует Панель управления');
      end;
    end;

    if reg.ValueExists('NoDrives') then
    begin
      with ListView1.Items.Add do
      begin
        Caption := 'NoDrives';

        SubItems.Add('Блокирует управление дисками в Проводнике');
      end;
    end;

    if reg.ValueExists('NoViewOnDrive') then
    begin
      with ListView1.Items.Add do
      begin
        Caption := 'NoViewOnDrive';

        SubItems.Add('Блокирует просмотр дисков в Проводнике');
      end;
    end;

    if reg.ValueExists('NoChangingWallpaper') then
    begin
      with ListView1.Items.Add do
      begin
        Caption := 'NoChangingWallpaper';

        SubItems.Add('Блокирует смену обоев');
      end;
    end;

    if reg.ValueExists('NoRun') then
    begin
      with ListView1.Items.Add do
      begin
        Caption := 'NoRun';

        SubItems.Add('Блокирует окно Выполнить');
      end;
    end;

    if reg.ValueExists('NoFind') then
    begin
      with ListView1.Items.Add do
      begin
        Caption := 'NoFind';

        SubItems.Add('Блокирует поиск в Проводнике');
      end;
    end;

    if reg.ValueExists('NoSecurityTab') then
    begin
      with ListView1.Items.Add do
      begin
        Caption := 'NoSecurityTab';

        SubItems.Add('Блокирует вкладку Безопасность в Проводнике');
      end;
    end;

    if reg.ValueExists('NoFolderOptions') then
    begin
      with ListView1.Items.Add do
      begin
        Caption := 'NoFolderOptions';

        SubItems.Add('Блокирует параметры папок');
      end;
    end;

    reg.CloseKey();

    reg.OpenKey('SOFTWARE\Policies\Microsoft\Windows\System', true);

    if reg.ValueExists('DisableCMD') then
    begin
      with ListView1.Items.Add do
      begin
        Caption := 'DisableCMD';

        SubItems.Add('Блокирует Командную строку');
      end;
    end;

    reg.CloseKey();

    reg.OpenKey('SOFTWARE\Policies\Microsoft\MMC', true);

    if reg.ValueExists('RestrictToPermittedSnapins') then
    begin
      with ListView1.Items.Add do
      begin
        Caption := 'RestrictToPermittedSnapins';

        SubItems.Add('Блокирует политику MMC');
      end;
    end;

    reg.CloseKey();

    reg.Free();

    Label2.Caption := 'Статус: Поиск завершен!';
  end else begin
    reg.RootKey := HKEY_CURRENT_USER;
    reg.OpenKey('SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System', true);

    if reg.ValueExists('DisableTaskMgr') then
    begin
      with ListView1.Items.Add do
      begin
        Caption := 'DisableTaskMgr';

        SubItems.Add('Блокирует диспетчер задач');
      end;
    end;

    if reg.ValueExists('DisableRegistryTools') then
    begin
      with ListView1.Items.Add do
      begin
        Caption := 'DisableRegistryTools';

        SubItems.Add('Блокирует редактор реестра');
      end;
    end;

    if reg.ValueExists('DisableSR') then
    begin
      with ListView1.Items.Add do
      begin
        Caption := 'DisableSR';

        SubItems.Add('Блокирует среду восстановления');
      end;
    end;

    if reg.ValueExists('DisableConfig') then
    begin
      with ListView1.Items.Add do
      begin
        Caption := 'DisableConfig';

        SubItems.Add('Блокирует восстановление системы');
      end;
    end;

    if reg.ValueExists('DisableChangePassword') then
    begin
      with ListView1.Items.Add do
      begin
        Caption := 'DisableChangePassword';

        SubItems.Add('Блокирует смену пароля');
      end;
    end;

    reg.CloseKey();

    reg.OpenKey('SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer', true);

    if reg.ValueExists('NoLogoff') then
    begin
      with ListView1.Items.Add do
      begin
        Caption := 'NoLogoff';

        SubItems.Add('Блокирует выход из пользователя');
      end;
    end;

    if reg.ValueExists('RestrictRun') then
    begin
      with ListView1.Items.Add do
      begin
        Caption := 'RestrictRun';

        SubItems.Add('Блокирует открытие программ');
      end;
    end;

    if reg.ValueExists('DisallowRun') then
    begin
      with ListView1.Items.Add do
      begin
        Caption := 'DisallowRun';

        SubItems.Add('Блокирует открытие некоторых программ');
      end;
    end;

    if reg.ValueExists('NoClose') then
    begin
      with ListView1.Items.Add do
      begin
        Caption := 'NoClose';

        SubItems.Add('Блокирует выключение ПК');
      end;
    end;

    if reg.ValueExists('NoWinKeys') then
    begin
      with ListView1.Items.Add do
      begin
        Caption := 'NoWinKeys';

        SubItems.Add('Блокирует горячие клавиши с кнопкой Win');
      end;
    end;

    if reg.ValueExists('NoTrayContextMenu') then
    begin
      with ListView1.Items.Add do
      begin
        Caption := 'NoTrayContextMenu';

        SubItems.Add('Блокирует контекстное меню');
      end;
    end;

    if reg.ValueExists('NoSetTaskbar') then
    begin
      with ListView1.Items.Add do
      begin
        Caption := 'NoSetTaskbar';

        SubItems.Add('Блокирует изменение параметров в Панели задач');
      end;
    end;

    if reg.ValueExists('NoControlPanel') then
    begin
      with ListView1.Items.Add do
      begin
        Caption := 'NoControlPanel';

        SubItems.Add('Блокирует Панель управления');
      end;
    end;

    if reg.ValueExists('NoDrives') then
    begin
      with ListView1.Items.Add do
      begin
        Caption := 'NoDrives';

        SubItems.Add('Блокирует управление дисками в Проводнике');
      end;
    end;

    if reg.ValueExists('NoViewOnDrive') then
    begin
      with ListView1.Items.Add do
      begin
        Caption := 'NoViewOnDrive';

        SubItems.Add('Блокирует просмотр дисков в Проводнике');
      end;
    end;

    if reg.ValueExists('NoChangingWallpaper') then
    begin
      with ListView1.Items.Add do
      begin
        Caption := 'NoChangingWallpaper';

        SubItems.Add('Блокирует смену обоев');
      end;
    end;

    if reg.ValueExists('NoRun') then
    begin
      with ListView1.Items.Add do
      begin
        Caption := 'NoRun';

        SubItems.Add('Блокирует окно Выполнить');
      end;
    end;

    if reg.ValueExists('NoFind') then
    begin
      with ListView1.Items.Add do
      begin
        Caption := 'NoFind';

        SubItems.Add('Блокирует поиск в Проводнике');
      end;
    end;

    if reg.ValueExists('NoSecurityTab') then
    begin
      with ListView1.Items.Add do
      begin
        Caption := 'NoSecurityTab';

        SubItems.Add('Блокирует вкладку Безопасность в Проводнике');
      end;
    end;

    if reg.ValueExists('NoFolderOptions') then
    begin
      with ListView1.Items.Add do
      begin
        Caption := 'NoFolderOptions';

        SubItems.Add('Блокирует параметры папок');
      end;
    end;

    reg.CloseKey();

    reg.OpenKey('SOFTWARE\Policies\Microsoft\Windows\System', true);

    if reg.ValueExists('DisableCMD') then
    begin
      with ListView1.Items.Add do
      begin
        Caption := 'DisableCMD';

        SubItems.Add('Блокирует Командную строку');
      end;
    end;

    reg.CloseKey();

    reg.OpenKey('SOFTWARE\Policies\Microsoft\MMC', true);

    if reg.ValueExists('RestrictToPermittedSnapins') then
    begin
      with ListView1.Items.Add do
      begin
        Caption := 'RestrictToPermittedSnapins';

        SubItems.Add('Блокирует политику MMC');
      end;
    end;

    reg.CloseKey();

    reg.RootKey := HKEY_CURRENT_USER;
    reg.OpenKey('SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System', true);

    reg.DeleteValue('DisableTaskMgr');
    reg.DeleteValue('DisableRegistryTools');
    reg.DeleteValue('DisableSR');
    reg.DeleteValue('DisableConfig');
    reg.DeleteValue('DisableChangePassword');

    reg.CloseKey();

    reg.OpenKey('SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer', true);

    reg.DeleteValue('NoLogoff');
    reg.DeleteValue('RestrictRun');
    reg.DeleteValue('DisallowRun');
    reg.DeleteValue('NoClose');
    reg.DeleteValue('NoWinKeys');
    reg.DeleteValue('NoTrayContextMenu');
    reg.DeleteValue('NoSetTaskbar');
    reg.DeleteValue('NoControlPanel');
    reg.DeleteValue('NoDrives');
    reg.DeleteValue('NoViewOnDrive');
    reg.DeleteValue('NoChangingWallpaper');
    reg.DeleteValue('NoRun');
    reg.DeleteValue('NoFind');
    reg.DeleteValue('NoSecurityTab');
    reg.DeleteValue('NoFolderOptions');

    reg.CloseKey();

    reg.OpenKey('SOFTWARE\Policies\Microsoft\Windows\System', true);

    reg.DeleteValue('DisableCMD');

    reg.CloseKey();

    reg.OpenKey('SOFTWARE\Policies\Microsoft\MMC', true);

    reg.DeleteValue('RestrictToPermittedSnapins');

    reg.CloseKey();

    reg.Free();

    Label2.Caption := 'Статус: Поиск и разблокировка ограничений завершены!';
  end;
end;

procedure TForm6.CheckBox1Click(Sender: TObject);
begin
  if CheckBox1.Checked then begin
    Button1.Caption := 'Поиск и разблокировка ограничений';
  end else begin
    Button1.Caption := 'Поиск ограничений';
  end;
end;

procedure TForm6.FormCloseQuery(Sender: TObject; var CanClose: boolean);
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

procedure TForm6.FormCreate(Sender: TObject);
var i: integer;
begin
  randomize;

  SetLength(title, len);

  for i := 1 to len do
    title[i] := chr(random(20)+ord('a'));

  caption := title;
end;

procedure TForm6.N2Click(Sender: TObject);
begin
  Form2.Show();
  Form6.Close();
end;

procedure TForm6.N4Click(Sender: TObject);
begin
  Application.Terminate();
end;

procedure TForm6.N6Click(Sender: TObject);
begin
  Form5.Show();
end;

procedure TForm6.N8Click(Sender: TObject);
begin
  ShellExecute(Application.Handle, 'open', 'https://mlevankov.taplink.ws/', nil, nil, SW_NORMAL);
end;

end.
