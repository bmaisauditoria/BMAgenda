unit frmRelEscala;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, Db, DBTables, StdCtrls, Buttons, DBCtrls, ComCtrls, Spin,
  MemDS, DBAccess, MSAccess, DateUtils, Variants;

type
  TfrmRelEscalas = class(TForm)
    Panel1: TPanel;
    cmpCodHospital: TDBText;
    cmpHospital: TDBLookupComboBox;
    chkHospital: TCheckBox;
    cmdRelEscalaP: TBitBtn;
    rdgOrdem: TRadioGroup;
    Label3: TLabel;
    dtpFim: TDateTimePicker;
    grpMed: TGroupBox;
    chkCliente: TCheckBox;
    cmpCliente: TDBLookupComboBox;
    cmpCodCliente: TDBText;
    chkMedico: TCheckBox;
    cmpMedico: TDBLookupComboBox;
    cmpCodMedico: TDBText;
    dbCliente: TMSTable;
    dsCliente: TDataSource;
    dbHospital: TMSTable;
    dsHospital: TDataSource;
    dbHospitalHospital: TIntegerField;
    dbHospitalNome: TStringField;
    dbMedico: TMSTable;
    dsMedico: TDataSource;
    dbClienteClienteID: TStringField;
    dbClienteCliente: TIntegerField;
    dbClienteNome: TStringField;
    dbMedicoAuditor: TIntegerField;
    dbMedicoNome: TStringField;
    grpEnfermeiro: TGroupBox;
    cmpCodEnfermeiro: TDBText;
    chkEnfermeiro: TCheckBox;
    cmpEnfermeiro: TDBLookupComboBox;
    dbEnfermeiro: TMSTable;
    dsEnfermeiro: TDataSource;
    dbEnfermeiroEnfermeiro: TIntegerField;
    dbEnfermeiroNome: TStringField;
    grpPeriodo: TGroupBox;
    cmdRelEscalaD: TBitBtn;
    datFim: TDateTimePicker;
    datIni: TDateTimePicker;
    Label1: TLabel;
    Label2: TLabel;
    dbServico: TMSTable;
    dsServico: TDataSource;
    dbServicoServico: TStringField;
    dbServicoNome: TStringField;
    dbServicoValorizado: TBooleanField;
    dbServicoValor: TCurrencyField;
    dbServicoVinculado: TStringField;
    chkServico: TCheckBox;
    cmpServico: TDBLookupComboBox;
    cmpCodServico: TDBText;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure chkMedicoClick(Sender: TObject);
    procedure chkHospitalClick(Sender: TObject);
    procedure cmdRelEscalaPClick(Sender: TObject);
    procedure chkClienteClick(Sender: TObject);
    procedure chkEnfermeiroClick(Sender: TObject);
    procedure rdgOrdemClick(Sender: TObject);
    procedure cmdRelEscalaDClick(Sender: TObject);
    procedure dbServicoFilterRecord(DataSet: TDataSet;
      var Accept: Boolean);
    procedure chkServicoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelEscalas: TfrmRelEscalas;

implementation

uses frmPrincipal, dmRelatorios, frmEscalas;

{$R *.DFM}

procedure TfrmRelEscalas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    dbCliente.close;
    dbHospital.close;
    dbMedico.close;
    dbEnfermeiro.close;
    dbServico.Close;
end;

procedure TfrmRelEscalas.FormShow(Sender: TObject);
var d,m,a:word;
begin
    DecodeDate(date,a,m,d);
    datIni.date:=EncodeDate(a,m,1);
    datFim.date:=EndOfTheMonth(date);
    dtpFim.date:=date-1;

    dbCliente.Open;
    cmpCliente.KeyValue:=dbClienteCliente.Value;

    dbHospital.Open;
    cmpHospital.KeyValue:=dbHospitalHospital.Value;

    dbMedico.Open;
    cmpMedico.KeyValue:=dbMedicoAuditor.Value;

    dbEnfermeiro.Open;
    cmpEnfermeiro.KeyValue:=dbEnfermeiroEnfermeiro.Value;

    dbServico.Open;
    cmpServico.KeyValue:=dbServicoServico.Value;
end;

procedure TfrmRelEscalas.chkMedicoClick(Sender: TObject);
begin
    if chkmedico.Checked then
    begin
       cmpmedico.Visible:=false;
       cmpCodmedico.visible:=false;
       if rdgOrdem.ItemIndex<=1 then
            grpEnfermeiro.Visible:=true;
    end
    else
    begin
       cmpmedico.Visible:=true;
       cmpCodmedico.Visible:=true;
       if rdgOrdem.ItemIndex<=1 then
           grpEnfermeiro.Visible:=false;
    end;
end;

procedure TfrmRelEscalas.chkHospitalClick(Sender: TObject);
begin
    if chkHospital.Checked then
    begin
       cmpHospital.Visible:=false;
       cmpCodHospital.visible:=false;
    end
    else
    begin
       cmpHospital.Visible:=true;
       cmpCodHospital.Visible:=true;
    end;
end;

procedure TfrmRelEscalas.cmdRelEscalaPClick(Sender: TObject);
var iHospital,iMedico,iCliente,iEnfermeiro:integer;
var iMes,iAno:integer;
var iLinhaH,iLinhaM,iLInhaC,iLinhaE,iLinhaD,iLinhaO,iLinhaT,iLinhaS:string;
var iMaximo:variant;
var iCli,iHosp,iAud,iServico:string;
var iIni,iFim,iFinaliza:TDate;
begin
     iCliente:=dbClienteCliente.Value;
     iHospital:=dbHospitalHospital.Value;
     iMedico:=dbMedicoAuditor.Value;
     iEnfermeiro:=dbEnfermeiroEnfermeiro.Value;
     iServico:=dbServicoServico.value;
     iIni:=datIni.Date;
     iFim:=datFim.date;
     iFinaliza:=dtpFim.date;
     iLinhaT:='';

    if chkCliente.Checked then
       iLinhaC:=''
    else
       iLinhaC:=' and Escala.Cliente=:Cli ';

    if chkHospital.Checked then
       iLinhaH:=''
    else
       iLinhaH:=' and Escala.Hospital=:Hosp ';

    if chkServico.Checked then
       iLinhaS:=''
    else
       iLinhaS:=' and Escala.Servico=:Serv ';

    if chkMedico.Checked then
       iLinhaM:=''
    else
       if rdgOrdem.ItemIndex=2 then
           iLinhaM:=' and Escala.Auditor=:Med '
       else
           iLinhaM:=' and (Escala.Tipo='+QuotedStr('M')+' and Escala.Auditor=:Med) ';

    if chkEnfermeiro.Checked then
       iLinhaE:=''
    else
       if rdgOrdem.ItemIndex=3 then
           iLinhaM:=' and Escala.Auditor=:Enf '
       else
       iLinhaE:=' and (Escala.Tipo='+QuotedStr('E')+' and Escala.Auditor=:Enf) ';

    case rdgOrdem.ItemIndex of
    0:iLinhaO:='order by Escala.ClienteID,Regiao,Nome,Escala.Tipo,Escala.Auditor,Escala.Servico';
    1:iLinhaO:='order by Regiao,Nome,Escala.ClienteID,Escala.Tipo,Escala.Auditor,Escala.Servico';
    2:begin
        iLinhaO:='order by Escala.Auditor,Escala.ClienteID,Nome,Escala.Servico';
        iLinhaT:=' and (Escala.Tipo='+QuotedStr('M')+') ';
      end;
    3:begin
        iLinhaO:='order by Escala.Auditor,Escala.ClienteID,Nome,Escala.Servico';
        iLinhaT:=' and (Escala.Tipo='+QuotedStr('E')+') ';
      end;
    end;

     with dmRelatorio do
     begin
         qryEscala.SQL.Clear;
         qryEscala.SQL.Text:='Select * from Escala,EscalaPadrao, Hospital '+
                             'where Escala.Hospital=Hospital.Hospital and '+
                             'Escala.Cliente=EscalaPadrao.Cliente and '+
                             'Escala.Hospital=EscalaPadrao.Hospital and '+
                             'Escala.Tipo=EscalaPadrao.Tipo and '+
                             'Escala.Servico=EscalaPadrao.Servico and '+
                             '     (EscalaPadrao.DataFim>=:Data or EscalaPadrao.DataFim is null) '+
                              iLinhaC+iLinhaH+iLinhaM+iLinhaE+iLinhaT+iLinhaS+
                              iLinhaO;

         qryEscala.ParamByName('Data').Value:=iFinaliza;

         if not chkCliente.Checked then
         qryEscala.ParamByName('Cli').Value:=iCliente;

         if not chkMedico.Checked then
            qryEscala.ParamByName('Med').Value:=iMedico;

         if not chkEnfermeiro.Checked then
            qryEscala.ParamByName('Enf').Value:=iEnfermeiro;

         if not chkServico.Checked then
            qryEscala.ParamByName('Serv').Value:=iServico;

         if not chkHospital.Checked then
             qryEscala.ParamByName('Hosp').Value:=iHospital;

         qryEscala.Open;
         if qryEscala.RecordCount=0 then
         begin
            ShowMessage('Nenhuma informação a ser impressa');
            qryEscala.Close;
            abort;
        end;

        case rdgOrdem.ItemIndex of
        2,3:begin
            qryEscalaM.Close;
            qryEscalaM.SQL.Text:='Delete from relEscalaM';
            qryEscalaM.Execute;
            qryEscalaM.SQL.Text:='Select * from relEscalaM order by AuditorNome,Hospital,ClienteID';
            qryEscalaM.Open;

            qryEscala.First;
            while not qryEscala.eof do
            begin
                iCli:=qryEscalaClienteId.value;
                iHosp:=qryEscalaNome.value;
                if rdgOrdem.ItemIndex=2 then
                    iAud:=qryEscalaMedicoNome.value;
                if rdgOrdem.ItemIndex=3 then
                    iAud:=qryEscalaEnfermeiroNome.value;
                if qryEscalaM.Locate('AuditorNome;Hospital;ClienteID',VarArrayof([iAud,iHosp,iCli]),[]) then
                    qryEscalaM.Edit
                else
                begin
                    qryEscalaM.Insert;
                    qryEscalaMAuditorNome.value:=iAud;
                    qryEscalaMHospital.value:=iHosp;
                    qryEscalaMClienteID.value:=iCli;
                    qryEscalaMRegiao.value:=qryEscalaRegiaoNome.value;
                end;

                while (not qryEscala.eof) and
                      (qryEscalaClienteId.value=iCli) and
                      (qryEscalaNome.value=iHosp) and
                      ((qryEscalaMedicoNome.value=iAud) or (qryEscalaEnfermeiroNome.value=iAud)) do
                begin
                    qryEscalaMServicos.value:=qryEscalaMServicos.value+qryEscalaServico.value+'-';
                    qryEscala.Next;
                end;
                qryEscalaM.Post;
            end;
            qryEscalaM.Refresh;
            qryEscalaM.First;
        end;
        end;

        case rdgOrdem.ItemIndex of
         0:begin
            frmMenu.rvBBAgenda.SetParam('Titulo','Escala por Cliente/Região');
            frmMenu.rvBBAgenda.SelectReport('relEscalaCli',true);
           end;
         1:begin
            frmMenu.rvBBAgenda.SetParam('Titulo','Escala por Região/Hospital');
            frmMenu.rvBBAgenda.SelectReport('relEscalaH',true);
           end;
         2:begin
            frmMenu.rvBBAgenda.SetParam('Titulo','Escala por Medico');
            frmMenu.rvBBAgenda.SelectReport('relEscalaM',true);
           end;
         3:begin
            frmMenu.rvBBAgenda.SetParam('Titulo','Escala por Enfermeiro');
            frmMenu.rvBBAgenda.SelectReport('relEscalaM',true);
           end;
        end;
        frmMenu.rvBBAgenda.Execute;
     end;
end;

procedure TfrmRelEscalas.chkClienteClick(Sender: TObject);
begin
    if chkCliente.Checked then
    begin
       cmpCliente.Visible:=false;
       cmpCodCliente.visible:=false;
    end
    else
    begin
       cmpCliente.Visible:=true;
       cmpCodCliente.Visible:=true;
    end;

end;

procedure TfrmRelEscalas.chkEnfermeiroClick(Sender: TObject);
begin
    if chkenfermeiro.Checked then
    begin
       cmpenfermeiro.Visible:=false;
       cmpCodenfermeiro.visible:=false;
       if rdgOrdem.ItemIndex<=1 then
           grpMed.Visible:=true;
    end
    else
    begin
       cmpenfermeiro.Visible:=true;
       cmpCodenfermeiro.Visible:=true;
       if rdgOrdem.ItemIndex<=1 then
           grpMed.Visible:=false;
    end;
end;

procedure TfrmRelEscalas.rdgOrdemClick(Sender: TObject);
begin
    case rdgOrdem.ItemIndex of
    2:begin
        grpMed.Visible:=true;
        grpEnfermeiro.Visible:=false;
      end;
    3:begin
        grpMed.Visible:=false;
        grpEnfermeiro.Visible:=true;
      end;
    else
    begin
        grpMed.Visible:=true;
        grpEnfermeiro.Visible:=true;
    end;
    end;

end;

procedure TfrmRelEscalas.cmdRelEscalaDClick(Sender: TObject);
var iHospital,iMedico,iCliente,iEnfermeiro:integer;
var iMes,iAno:integer;
var iLinhaH,iLinhaM,iLInhaC,iLinhaE,iLinhaD,iLinhaO,iLinhaT,iLinhaS,iServico:string;
var iMaximo:variant;
var iIni,iFim,iFinaliza:TDate;
begin
     iCliente:=dbClienteCliente.Value;
     iHospital:=dbHospitalHospital.Value;
     iMedico:=dbMedicoAuditor.Value;
     iEnfermeiro:=dbEnfermeiroEnfermeiro.Value;
     iServico:=dbServicoServico.value;
     iIni:=datIni.date;
     iFim:=datFim.date;
     iFinaliza:=dtpFim.date;
     iLinhaT:='';

    if chkCliente.Checked then
       iLinhaC:=''
    else
       iLinhaC:=' and EscalaDiaria.Cliente=:Cli ';

    if chkHospital.Checked then
       iLinhaH:=''
    else
       iLinhaH:=' and EscalaDiaria.Hospital=:Hosp ';

    if chkServico.Checked then
       iLinhaS:=''
    else
       iLinhaS:=' and EscalaDiaria.Servico=:Serv ';

    if chkMedico.Checked then
       iLinhaM:=''
    else
       if rdgOrdem.ItemIndex=2 then
           iLinhaM:=' and EscalaDiaria.Auditor=:Med '
       else
           iLinhaM:=' and (EscalaDiaria.Tipo='+QuotedStr('M')+' and EscalaDiaria.Auditor=:Med) ';

    if chkEnfermeiro.Checked then
       iLinhaE:=''
    else
       if rdgOrdem.ItemIndex=3 then
           iLinhaM:=' and EscalaDiaria.Auditor=:Enf '
       else
       iLinhaE:=' and (EscalaDiaria.Tipo='+QuotedStr('E')+' and EscalaDiaria.Auditor=:Enf) ';

    case rdgOrdem.ItemIndex of
    0:iLinhaO:='order by EscalaDiaria.ClienteID,Regiao,Nome,EscalaDiaria.DataInicio,EscalaDiaria.DataFim,EscalaDiaria.Tipo,EscalaDiaria.Auditor,EscalaDiaria.Servico';
    1:iLinhaO:='order by Regiao,Nome,EscalaDiaria.ClienteID,EscalaDiaria.DataInicio,EscalaDiaria.DataFim,EscalaDiaria.Tipo,EscalaDiaria.Auditor,EscalaDiaria.Servico';
    2:begin
        iLinhaO:='order by EscalaDiaria.DataInicio,EscalaDiaria.DataFim,EscalaDiaria.Auditor,Nome,EscalaDiaria.ClienteID,EscalaDiaria.Servico';
        iLinhaT:=' and (EscalaDiaria.Tipo='+QuotedStr('M')+') ';
      end;
    3:begin
        iLinhaO:='order by EscalaDiaria.DataInicio,EscalaDiaria.DataFim, EscalaDiaria.Auditor,Nome,EscalaDiaria.ClienteID,EscalaDiaria.Servico';
        iLinhaT:=' and (EscalaDiaria.Tipo='+QuotedStr('E')+') ';
      end;
    end;

     with dmRelatorio do
     begin
         qryEscalaDiaria.SQL.Clear;
         qryEscalaDiaria.SQL.Text:='Select * from EscalaDiaria,EscalaPadrao, Hospital '+
                             'where EscalaDiaria.Hospital=Hospital.Hospital and '+
                             '      EscalaDiaria.Cliente=EscalaPadrao.Cliente and '+
                             '      EscalaDiaria.Hospital=EscalaPadrao.Hospital and '+
                             '      EscalaDiaria.Tipo=EscalaPadrao.Tipo and '+
                             '      EscalaDiaria.Servico=EscalaPadrao.Servico and '+
                             '     (EscalaPadrao.DataFim>=:Data or EscalaPadrao.DataFim is null) and '+
                             '     (EscalaDiaria.DataFim<=:DataFim or EscalaDiaria.DataFim is null)  '+
                              iLinhaC+iLinhaH+iLinhaM+iLinhaE+iLinhaT+iLinhaS+
                              iLinhaO;

         qryEscalaDiaria.ParamByName('Data').Value:=iFinaliza;
         qryEscalaDiaria.ParamByName('DataFim').Value:=iFim;

         if not chkCliente.Checked then
         qryEscalaDiaria.ParamByName('Cli').Value:=iCliente;

         if not chkMedico.Checked then
            qryEscalaDiaria.ParamByName('Med').Value:=iMedico;

         if not chkEnfermeiro.Checked then
            qryEscalaDiaria.ParamByName('Enf').Value:=iEnfermeiro;

         if not chkServico.Checked then
            qryEscalaDiaria.ParamByName('Serv').Value:=iServico;

         if not chkHospital.Checked then
             qryEscalaDiaria.ParamByName('Hosp').Value:=iHospital;

         qryEscalaDiaria.Open;
         if qryEscalaDiaria.RecordCount=0 then
         begin
            ShowMessage('Nenhuma informação a ser impressa');
            qryEscalaDiaria.Close;
            abort;
         end;

        frmMenu.rvBBAgenda.SetParam('Competencia','Periodo de'+DateToStr(iIni)+' a '+DateToStr(iFim));

        case rdgOrdem.ItemIndex of
         0,1,2,3:begin
            frmMenu.rvBBAgenda.SetParam('Titulo','Escala Diaria por Cliente/Região');
            frmMenu.rvBBAgenda.SelectReport('relEscalaCliDiaria',true);
           end;
{         1:begin
            frmMenu.rvBBAgenda.SetParam('Titulo','Escala Diaria por Região/Hospital');
            frmMenu.rvBBAgenda.SelectReport('relEscalaHDiaria',true);
           end;
         2:begin
            frmMenu.rvBBAgenda.SetParam('Titulo','Escala Diaria por Medico');
            frmMenu.rvBBAgenda.SelectReport('relEscalaMDiaria',true);
           end;
         3:begin
            frmMenu.rvBBAgenda.SetParam('Titulo','Escala Diaria por Enfermeiro');
            frmMenu.rvBBAgenda.SelectReport('relEscalaMDiaria',true);
           end;}
        end;
        frmMenu.rvBBAgenda.Execute;
     end;
end;

procedure TfrmRelEscalas.dbServicoFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
    accept:=dbServicoValorizado.value=true;

end;

procedure TfrmRelEscalas.chkServicoClick(Sender: TObject);
begin
    if chkServico.Checked then
    begin
       cmpServico.Visible:=false;
       cmpCodServico.visible:=false;
    end
    else
    begin
       cmpServico.Visible:=true;
       cmpCodServico.Visible:=true;
    end;

end;

end.
