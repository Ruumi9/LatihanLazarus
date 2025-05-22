unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    btnLog: TButton;
    btnClose: TButton;
    editUser: TEdit;
    editPassword: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    procedure btnCloseClick(Sender: TObject);
    procedure btnLogClick(Sender: TObject);
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

procedure TForm1.btnLogClick(Sender: TObject);
var
    user, password, inpUser,inpPass: String;
begin
     user := 'admin';
     password := 'admin';
     inpUser := editUser.Text;
     inpPass := editPassword.Text;
     if(inpUser = user) and (inpPass = password) then
                ShowMessage('ok')
                else
                ShowMessage('tak');


end;

procedure TForm1.btnCloseClick(Sender: TObject);
begin
  close;
end;

end.

