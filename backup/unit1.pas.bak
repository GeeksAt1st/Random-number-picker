unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls,
  ExtCtrls;

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
    Timer1: TTimer;
    procedure btnOKClick(Sender: TObject);
    procedure edtInputChange(Sender: TObject);
    procedure edtInputClick(Sender: TObject);
    procedure edtInputExit(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
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
var pp,a:string; q,g,s:integer;c:char;
begin
  if edtinput.Text='' then btnok.Enabled:=false;
  edtInput.Font.color:=clblack;
  edtInput.font.Size:=25;
  s:=length(edtInput.Text);
  a:=edtInput.Text;
  for g:=1 to s do
  begin
  c:=a[g];
  if edtInput.Text='Input the count.' then
  begin
  lblwarning.Visible:=false ; break;
  end
  else if (ord(c)>57) or (ord(c)<48) then
  begin
  lblwarning.Caption:='警告：您输入了除数字以外的其他字符！';
  lblwarning.Visible:=true;
  btnok.Enabled:=false;
  break;
  end
  else
  lblwarning.Visible:=false;
  btnOK.Enabled:=true;
  end;
  if s>4 then
  begin
  pp:=edtInput.Caption;
  for q:= 5 to s do
  begin
  delete(pp,q,1);
  edtinput.Caption:=pp;
  edtInput.SelStart:=5;
  lblwarning.Caption:='警告：您最多只可输入4位数！';
  lblwarning.Visible:=true;
  timer1.Enabled:=true;
  end;
  end;

end;

procedure TfrmMain.btnOKClick(Sender: TObject);
var jj:string;
  ee,gg:integer;
begin
   val(edtInput.Text,gg);
   randomize;
   ee:=random(gg)+1;
   str(ee,jj);
   lblMain.Caption:=jj;
end;




procedure TfrmMain.edtInputExit(Sender: TObject);
begin

  if edtInput.Text='' then
  begin
   edtInput.Text:='Input the count.';edtInput.Font.Color:=clsilver;
  edtInput.Font.size:=18; btnok.Enabled:=false;

  end;
  end;



procedure TfrmMain.Timer1Timer(Sender: TObject);
begin
  lblwarning.Visible:=false;
  timer1.Enabled:=false;
end;

end.

