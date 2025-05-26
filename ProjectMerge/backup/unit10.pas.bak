unit Unit10;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls,
  ExtCtrls;

type

  { TForm10 }

  TForm10 = class(TForm)
    btnPilih: TButton;
    Label1: TLabel;
    Label2: TLabel;
    rgPilihan: TRadioGroup;
    procedure btnPilihClick(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  Form10: TForm10;

implementation

{$R *.lfm}

{ TForm10 }

procedure TForm10.btnPilihClick(Sender: TObject);
var
  pilihan: String;
begin
  case rgPilihan.ItemIndex of
  0: pilihan:= 'OK';
  1: pilihan:= 'NO';
  2: pilihan:= 'Bisa Jadi';
  end;
  Label2.Caption:= 'Anda Memilih : ' + pilihan;
end;

end.

