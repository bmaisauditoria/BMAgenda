unit frmAgendamailcopia;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, ComCtrls, StdCtrls, Buttons, DB, DBTables, Grids,
  ValEdit, DBGrids;

type
  TfrmAgendaMailcopias = class(TForm)
    frmCopiaFolha: TPanel;
    Label1: TLabel;
    Memo1: TMemo;
    BitBtn1: TBitBtn;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAgendaMailcopias: TfrmAgendaMailcopias;

implementation

uses frmPrincipal;
{$R *.dfm}

procedure TfrmAgendaMailcopias.FormShow(Sender: TObject);
var i:integer;
begin
    Memo1.Clear;
    Memo1.Lines.LoadFromFile(iDir+'mail.txt');
end;

procedure TfrmAgendaMailcopias.FormCreate(Sender: TObject);
begin
    memo1.lines.clear;
    if not FileExists(iDir+'mail.txt') then
         memo1.Lines.SaveToFile(iDir+'mail.txt');
end;

procedure TfrmAgendaMailcopias.BitBtn1Click(Sender: TObject);
begin
    Memo1.Lines.SaveToFile(iDir+'mail.txt');
    ShowMessage('e-mails gravados com sucesso');
end;

end.
