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
    Face: TTimer;
    Timerwarning: TTimer;
    Tmrstop: TTimer;
    Tmrmain: TTimer;
    procedure btnOKClick(Sender: TObject);
    procedure edtInputChange(Sender: TObject);
    procedure edtInputClick(Sender: TObject);
    procedure edtInputExit(Sender: TObject);
    procedure FaceTimer(Sender: TObject);
    procedure TimerwarningTimer(Sender: TObject);
    procedure TmrmainTimer(Sender: TObject);
    procedure TmrstopTimer(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  frmMain: TfrmMain;

implementation
 var jctrl:integer;
{$R *.lfm}

{ TfrmMain }


procedure TfrmMain.edtInputClick(Sender: TObject);
begin
  edtInput.Font.Size:=26;
  If edtInput.Text='Input the count.' then
  edtInput.Text:='';
  end;



procedure TfrmMain.edtInputChange(Sender: TObject);
var pp,a:string; q,g,s:integer;c:char;
begin
  if edtinput.Text='' then btnok.Enabled:=false;
  edtInput.Font.color:=clblack;
  edtInput.font.Size:=26;
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
  Timerwarning.Enabled:=true;
  end;
  end;

end;

procedure TfrmMain.btnOKClick(Sender: TObject);
begin
  face.Enabled:=false;
  lblmain.Font.Size:=200;
  lblmain.Font.color:=clblack;
  tmrmain.Enabled:=false;
  tmrstop.Enabled:=false;
  tmrmain.Enabled:=true;
  tmrstop.Enabled:=true;
  edtInput.Enabled:=false;
end;



procedure TfrmMain.edtInputExit(Sender: TObject);
begin

  if edtInput.Text='' then
  begin
   edtInput.Text:='Input the count.';edtInput.Font.Color:=clsilver;
  edtInput.Font.size:=18; btnok.Enabled:=false;

  end;
  end;

procedure TfrmMain.FaceTimer(Sender: TObject);
var aggg:integer; fac:array[0..11] of string;
begin
  randomize;lblmain.Font.Size:=72;
  aggg:=random(8)+1;
  fac[1]:='(*^__^*)';fac[2]:='o(∩_∩)o';fac[3]:='-_-。';fac[4]:='(+﹏+)~';
  fac[5]:='~>_<~+';fac[6]:='(┬＿┬)↘ ';fac[7]:='●﹏●';fac[8]:='\("▔□▔)/)';
  lblmain.Caption:=fac[aggg];
end;



procedure TfrmMain.TimerwarningTimer(Sender: TObject);
var check:integer;  cc:string;
begin
  lblwarning.Visible:=false; cc:=edtinput.Text;
  for  check:=1 to length(edtinput.text)  do
  if (ord(cc[check])>57) or (ord(cc[check])<48) then
  begin
  lblwarning.Visible:=true;
  lblwarning.Caption:='警告：您输入了除数字以外的其他字符！';
  end;
  Timerwarning.Enabled:=false;
end;

procedure TfrmMain.TmrmainTimer(Sender: TObject);
   var jj:string;
  ee,gg:integer;
begin
   val(edtInput.Text,gg);
   randomize;
   ee:=random(gg)+1;
   str(ee,jj);
   lblMain.Caption:=jj;
end;

procedure TfrmMain.TmrstopTimer(Sender: TObject);
begin
  if (Tmrstop.Interval<1200) or (Tmrstop.Interval>3000) then jctrl:=jctrl+1;
  tmrmain.Enabled:=false;
  lblmain.Font.Color:=clblue;
  edtinput.Enabled:=true;
  edtinput.SetFocus;
  if jctrl mod 2<>0  then Tmrstop.Interval:=Tmrstop.Interval-450 else
  Tmrstop.Interval:=Tmrstop.Interval+450;
  tmrstop.Enabled:=false;
end;


begin
  jctrl:=1;

end.

