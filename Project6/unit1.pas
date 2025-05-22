unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Proses: TButton;
    editAngka1: TEdit;
    de: TEdit;
    editAngka2: TEdit;
    hasil: TEdit;
    procedure ProsesClick(Sender: TObject);
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

procedure TForm1.ProsesClick(Sender: TObject);
begin
     ShowMessage('isi dulu bang');

     if de.Text = '+' then
     hasil.Text:= IntToStr(StrToInt(editAngka1.Text) + StrToInt(editAngka2.Text));

     if de.Text = '-' then
     hasil.Text:= IntToStr(StrToInt(editAngka1.Text) - StrToInt(editAngka2.Text));

     if de.Text = '*' then
     hasil.Text:= IntToStr(StrToInt(editAngka1.Text) * StrToInt(editAngka2.Text));

end;

end.

