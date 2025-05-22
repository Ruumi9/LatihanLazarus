unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Clear: TButton;
    Result: TButton;
    panjangEdit: TEdit;
    lebarEdit: TEdit;
    luasEdit: TEdit;
    kelilingEdit: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    procedure ClearClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ResultClick(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.FormCreate(Sender: TObject);
begin

end;

procedure TForm1.ClearClick(Sender: TObject);
begin
  panjangEdit.Text:= '';
  lebarEdit.Text:= '';
  luasEdit.Text:='';
  kelilingEdit.Text:='';
end;

procedure TForm1.ResultClick(Sender: TObject);
   var
     panjang, lebar, luas, keliling : integer;
begin
  panjang:= StrToInt(panjangEdit.Text);
  lebar:= StrToInt(lebarEdit.Text);

  luas:= panjang * lebar;
  keliling:= 2 * (panjang + lebar);

  luasEdit.Text:= IntToStr(luas);
  kelilingEdit.Text:= IntToStr(keliling);

end;

end.

