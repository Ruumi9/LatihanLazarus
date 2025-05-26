unit Unit7;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, ExtCtrls,
  StdCtrls, dateutils;

type

  { TForm7 }

  TForm7 = class(TForm)
    LbTimer: TLabel;
    Timer1: TTimer;
    procedure FormCreate(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  Form7: TForm7;

implementation

{$R *.lfm}

{ TForm7 }

procedure TForm7.Timer1Timer(Sender: TObject);
begin
  LbTimer.Caption := TimeToStr(time);
end;

procedure TForm7.FormCreate(Sender: TObject);
begin

end;

end.

