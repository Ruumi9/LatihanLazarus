unit Unit6;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls,
  Calendar, dateutils;

type

  { TForm6 }

  TForm6 = class(TForm)
    kalender: TCalendar;
    edTanggal: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure kalenderChange(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  Form6: TForm6;

implementation

{$R *.lfm}

{ TForm6 }

procedure TForm6.FormCreate(Sender: TObject);
begin

end;

procedure TForm6.kalenderChange(Sender: TObject);
var
  tanggal : TDateTime;
begin
  tanggal:= StrToDate(kalender.Date);
  edTanggal.Text:= DateToStr(tanggal);
end;

end.

