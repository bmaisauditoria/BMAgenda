unit frmRelFechaEnf;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, Db, DBTables, StdCtrls, Buttons, DBCtrls, ComCtrls, Spin,
  MemDS, DBAccess, MSAccess, DateUtils, Grids, DBGrids;

type
  TfrmRelFechEnf = class(TForm)
    Panel1: TPanel;
    BitBtn2: TBitBtn;
    Label3: TLabel;
    cmbMes: TComboBox;
    cmbAno: TSpinEdit;
    dtpIni: TDateTimePicker;
    dtpFim: TDateTimePicker;
    Label1: TLabel;
    procedure BitBtn2Click(Sender: TObject);
    procedure cmbMesChange(Sender: TObject);
    procedure cmbAnoChange(Sender: TObject);
    Function DiaSemana(idata:TDate):string;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelFechEnf: TfrmRelFechEnf;

implementation

uses frmPrincipal, dmRelatorios, frmEscalas;

{$R *.DFM}

Function TfrmRelFechEnf.DiaSemana(idata:TDate):string;
var dia:string;
var a:integer;
begin
    a:=DayOfWeek(idata);
    case a of
    1:dia:='';
    2:dia:='Seg';
    3:dia:='Ter';
    4:dia:='Qua';
    5:dia:='Qui';
    6:dia:='Sex';
    7:dia:='';
    end;
    result:=dia;
end;


procedure TfrmRelFechEnf.BitBtn2Click(Sender: TObject);
var iHospital:integer;
var Ini,Fim,iDataini,iDatafim:TDate;

begin
    Ini:=dtpIni.date;
    Fim:=dtpFim.date;

     with dmRelatorio do
     begin
         qryFechaEnf.SQL.Clear;
         qryFechaEnf.SQL.Text:='SELECT Agenda.Enfermeiro, Agenda.Cliente, Agenda.Hospital,Enfermeiros.Nome '+
                               'FROM   Agenda '+
                               'inner join Enfermeiros on Agenda.Enfermeiro=Enfermeiros.Enfermeiro '+
                               'where (Agenda.Data>=:Ini) and (Agenda.Data<=:Fim) and '+
                               '      (Administrativo IS NULL OR Administrativo = 999999) AND (Agenda.Enfermeiro <> 0) '+
                               'GROUP BY Agenda.Enfermeiro, Agenda.Cliente, Agenda.Hospital,Enfermeiros.Nome '+
                               'ORDER BY Enfermeiros.Nome, Agenda.Cliente, Agenda.Hospital ';

         qryFechaEnf.ParamByName('Ini').asdate:=Ini;
         qryFechaEnf.ParamByName('Fim').asdate:=Fim;

         qryFechaEnf.Open;
         if qryFechaEnf.RecordCount=0 then
         begin
            ShowMessage('Nenhuma informação a ser impressa');
            qryFechaEnf.Close;
            abort;
         end;

       frmMenu.rvBBAgenda.SetParam('Titulo','Hospitais Fechados pela Enfermagem');
       frmMenu.rvBBAgenda.SetParam('Competencia','Periodo de'+DateToStr(Ini)+' a '+DateToStr(Fim));
       frmMenu.rvBBAgenda.SelectReport('relFechaEnf',true);
       frmMenu.rvBBAgenda.Execute;
     end;

end;

procedure TfrmRelFechEnf.cmbMesChange(Sender: TObject);
var maxday:word;
begin
    case cmbMes.ItemIndex+1 of
    2:maxday:=28+ord(cmbAno.Value mod 4=0);
    1,3,5,7,8,10,12:Maxday:=31;
    4,6,9,11:maxday:=30;
    end;
    dtpIni.DateTime:=EncodeDate(cmbAno.Value,cmbMes.ItemIndex+1,1);
    dtpFim.DateTime:=EncodeDate(cmbAno.Value,cmbMes.ItemIndex+1,maxday);
end;

procedure TfrmRelFechEnf.cmbAnoChange(Sender: TObject);
var maxday:word;
begin
    case cmbMes.ItemIndex+1 of
    2:maxday:=28+ord(cmbAno.Value mod 4=0);
    1,3,5,7,8,10,12:Maxday:=31;
    4,6,9,11:maxday:=30;
    end;
    dtpIni.DateTime:=EncodeDate(cmbAno.Value,cmbMes.ItemIndex+1,1);
    dtpFim.DateTime:=EncodeDate(cmbAno.Value,cmbMes.ItemIndex+1,maxday);
end;

procedure TfrmRelFechEnf.FormCreate(Sender: TObject);
var a,m,d:word;
begin
    DecodeDate(date,a,m,d);
    dtpIni.date:=EncodeDate(a,m,1);
    dtpFim.date:=EndOfTheMonth(date);
    cmbMes.ItemIndex:=m-1;
    cmbAno.Value:=a;
end;

end.
