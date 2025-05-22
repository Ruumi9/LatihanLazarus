unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls,
  ExtCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Label1: TLabel;
    RadioGroup1: TRadioGroup;
    procedure Button1Click(Sender: TObject);
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



procedure TForm1.Button1Click(Sender: TObject);
begin
   if RadioGroup1.ItemIndex=0 then
    Label1.Caption:='op';
   if RadioGroup1.ItemIndex=1 then
    Label1.Caption:='ol';
   if RadioGroup1.ItemIndex=2 then
    Label1.Caption:='ok';
end;

end.

