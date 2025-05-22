unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, DateTimePicker, Forms, Controls, Graphics,
  Dialogs, StdCtrls, dateutils;

type

  { TForm1 }

  TForm1 = class(TForm)
    btnResult: TButton;
    DTP1: TDateTimePicker;
    DTP2: TDateTimePicker;
    editSelisih: TEdit;
    Lawal: TLabel;
    Lakhir: TLabel;
    Label3: TLabel;
    procedure btnResultClick(Sender: TObject);
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

procedure TForm1.btnResultClick(Sender: TObject);
var
  Tawal, Takhir : TDateTime;
  total : String;
begin
  Tawal:= DTP1.Date;
  Takhir:=DTP2.Date;

  total:= IntToStr(DaysBetween(Takhir, Tawal));

  editSelisih.Text:= total;
end;

end.

