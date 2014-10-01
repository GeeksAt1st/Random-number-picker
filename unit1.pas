unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TfrmMain }

  TfrmMain = class(TForm)
    btnOK: TButton;
    edtInput: TEdit;
    Label1: TLabel;
    lblWarning: TLabel;
    lblNameEN: TLabel;
    lblV: TLabel;
    lblAboutTitle: TLabel;
    lblMain: TLabel;
    procedure edtInputChange(Sender: TObject);
    procedure edtInputClick(Sender: TObject);
    procedure edtInputExit(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  frmMain: TfrmMain;

implementation

{$R *.lfm}

{ TfrmMain }

procedure TfrmMain.edtInputClick(Sender: TObject);
begin
  edtInput.Font.Size:=25;
  If edtInput.Text='Input the count.' then
  edtInput.Text:='';
  end;

procedure TfrmMain.edtInputChange(Sender: TObject);
var a:string; g,s:integer;c:char;
begin
  edtInput.font.Size:=25;
  s:=length(edtInput.Text);
  a:=edtInput.Text;
  for g:=1 to s do
  begin
  c:=a[g];
  if (ord(c)>57) or (ord(c)<48) then
  begin
  lblwarning.Caption:='您输入了除数字以外的其他字符';
  lblwarning.Visible:=true;
  break;
  end
  else
  lblwarning.Visible:=false;
  if edtInput.Text='Input the count' then
  lblwarning.Visible:=false ;
  end;
  end;




procedure TfrmMain.edtInputExit(Sender: TObject);
begin

  if edtInput.Text='' then
   edtInput.Font.size:=18;
  end;


end.

