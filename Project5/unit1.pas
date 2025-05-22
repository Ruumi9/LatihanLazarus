unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls,
  Calendar, ExtCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Calendar1: TCalendar;
    Edit1: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Timer1: TTimer;
    procedure Calendar1Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);

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

procedure TForm1.Calendar1Change(Sender: TObject);
begin
  Edit1.Text:= Calendar1.Date;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
   FormatSettings.ShortDateFormat:='dd/mm/yy';
end;

procedure TForm1.Timer1Timer(Sender: TObject);
begin
  Label2.Caption:=TimeToStr(Time);
end;


end.


