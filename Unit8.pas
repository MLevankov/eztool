unit Unit8;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, PsAPI, Vcl.ExtCtrls,
  Vcl.Menus, ShellAPI, Vcl.ComCtrls;

type
  TForm8 = class(TForm)
    Label1: TLabel;
    UpdateProcessList: TTimer;
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    N7: TMenuItem;
    N8: TMenuItem;
    N9: TMenuItem;
    N10: TMenuItem;
    PopupMenu1: TPopupMenu;
    N11: TMenuItem;
    N12: TMenuItem;
    N13: TMenuItem;
    N14: TMenuItem;
    N17: TMenuItem;
    N18: TMenuItem;
    N19: TMenuItem;
    N20: TMenuItem;
    N22: TMenuItem;
    ListView1: TListView;
    N15: TMenuItem;
    N16: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure LoadProcesses;
    procedure UpdateProcessListTimer(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure N5Click(Sender: TObject);
    procedure N6Click(Sender: TObject);
    procedure N7Click(Sender: TObject);
    procedure N8Click(Sender: TObject);
    procedure N12Click(Sender: TObject);
    procedure N14Click(Sender: TObject);
    procedure N17Click(Sender: TObject);
    procedure N20Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form8: TForm8;
  title: string;
  len: integer = 25;

implementation

{$R *.dfm}

uses Unit5, Unit9;

procedure TForm8.FormCreate(Sender: TObject);
var i: integer;
begin
  randomize;

  SetLength(title, len);

  for i := 1 to len do
    title[i] := chr(random(20)+ord('a'));

  caption := title;

  LoadProcesses;
end;

procedure TForm8.LoadProcesses;
var hProc: THandle;
    procID: array[0..1023] of DWORD;
    procName: array[0..MAX_PATH-1] of Char;
    cbNeeded: DWORD;
    i: DWORD;
begin
  ListView1.Clear();

  if EnumProcesses(@procID, sizeof(procID), cbNeeded) then
  begin
    for i := 0 to (cbNeeded div sizeof(DWORD))-1 do
    begin
      hProc := OpenProcess(PROCESS_QUERY_INFORMATION or PROCESS_VM_READ, false, procID[i]);

      if hProc<>0 then
      begin
        if GetModuleFileNameEx(hProc, 0, procName, sizeof(procName) div sizeof(char))>0 then
        begin
          ListView1.Items.Add.Caption := procName;
        end;

        CloseHandle(hProc);
      end;
    end;
  end;
end;

procedure TForm8.N12Click(Sender: TObject);
begin
  ShellExecute(Application.Handle, 'open', 'https://mlevankov.taplink.ws/', nil, nil, SW_NORMAL);
end;

procedure TForm8.N14Click(Sender: TObject);
begin
  Form5.Show();
end;

procedure TForm8.N17Click(Sender: TObject);
begin
  Form9.Show();
end;

procedure TForm8.N20Click(Sender: TObject);
begin
  LoadProcesses;
end;

procedure TForm8.N2Click(Sender: TObject);
begin
  LoadProcesses;
end;

procedure TForm8.N4Click(Sender: TObject);
begin
  UpdateProcessList.Enabled := false;

  ListView1.Clear();

  UpdateProcessList.Interval := 5000;
  UpdateProcessList.Enabled := true;

  LoadProcesses;
end;

procedure TForm8.N5Click(Sender: TObject);
begin
  UpdateProcessList.Enabled := false;

  ListView1.Clear();

  UpdateProcessList.Interval := 2500;
  UpdateProcessList.Enabled := true;

  LoadProcesses;
end;

procedure TForm8.N6Click(Sender: TObject);
begin
  UpdateProcessList.Enabled := false;

  ListView1.Clear();

  UpdateProcessList.Interval := 1000;
  UpdateProcessList.Enabled := true;

  LoadProcesses;
end;

procedure TForm8.N7Click(Sender: TObject);
begin
  UpdateProcessList.Enabled := false;

  ListView1.Clear();

  UpdateProcessList.Interval := 500;
  UpdateProcessList.Enabled := true;

  LoadProcesses;
end;

procedure TForm8.N8Click(Sender: TObject);
begin
  UpdateProcessList.Enabled := false;

  ListView1.Clear();

  UpdateProcessList.Interval := 55;
  UpdateProcessList.Enabled := true;

  LoadProcesses;
end;

procedure TForm8.UpdateProcessListTimer(Sender: TObject);
begin
  LoadProcesses;
end;

end.
