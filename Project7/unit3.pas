unit Unit3;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls,
  ExtCtrls;

type

  { TForm2 }

  TForm2 = class(TForm)
    Cek: TButton;
    Jurusan: TComboBox;
    editBiaya: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Perempuan: TRadioButton;
    Laki: TRadioButton;
    Kelamin: TRadioGroup;
    procedure CekClick(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.lfm}

{ TForm2 }

procedure TForm2.CekClick(Sender: TObject);
var
  biaya,jumlah : integer;
begin
  case Jurusan.Text of
   'MM': begin
         biaya:= 1300;
   end;
   'RPL': begin
         biaya:=1500;
   end;
   'TKJ':begin
         biaya:=1000;
   end;
    end;
  if(Perempuan.Checked) then
   jumlah := biaya + 3000;
  if(Laki.Checked) then
   jumlah := biaya + 2000;

  editBiaya.Caption := IntToStr(jumlah);
end;

end.

