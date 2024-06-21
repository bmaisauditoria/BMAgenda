unit frmRelAgenda;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, Db, DBTables, StdCtrls, Buttons, DBCtrls, ComCtrls, Spin,
  MemDS, DBAccess, MSAccess, Grids, DBGrids ;

type
  TfrmRelAgendas = class(TForm)
    Panel1: TPanel;
    cmpCodHospital: TDBText;
    cmpHospital: TDBLookupComboBox;
    chkHospital: TCheckBox;
    cmdRel: TBitBtn;
    rdgOrdem: TRadioGroup;
    Label3: TLabel;
    dtpIni: TDateTimePicker;
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
    dbAdm: TMSTable;
    dbAdmAdministrativo: TIntegerField;
    dbAdmNome: TStringField;
    dbAdmemail: TStringField;
    dbAdmDataFim: TDateTimeField;
    dsAdm: TDataSource;
    grpAdm: TGroupBox;
    cmpCodAdm: TDBText;
    chkAdm: TCheckBox;
    cmpAdm: TDBLookupComboBox;
    cmdRel1: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure chkMedicoClick(Sender: TObject);
    procedure chkHospitalClick(Sender: TObject);
    procedure cmdRelClick(Sender: TObject);
    procedure chkClienteClick(Sender: TObject);
    procedure chkEnfermeiroClick(Sender: TObject);
    procedure rdgOrdemClick(Sender: TObject);
    procedure chkAdmClick(Sender: TObject);
    procedure cmdRel1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelAgendas: TfrmRelAgendas;

implementation

uses frmPrincipal, dmRelatorios, frmEscalas, frmAgendas, StrUtils;

{$R *.DFM}

procedure TfrmRelAgendas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    dbCliente.close;
    dbHospital.close;
    dbMedico.close;
    dbEnfermeiro.close;
    dbAdm.Close;
end;

procedure TfrmRelAgendas.FormShow(Sender: TObject);
var d,m,a:word;
begin
    DecodeDate(date,a,m,d);
    dtpIni.date:=frmAgenda.dtpIni.date;

    dbCliente.Open;
    cmpCliente.KeyValue:=dbClienteCliente.Value;

    dbHospital.Open;
    cmpHospital.KeyValue:=dbHospitalHospital.Value;

    dbMedico.Open;
    cmpMedico.KeyValue:=dbMedicoAuditor.Value;

    dbEnfermeiro.Open;
    cmpEnfermeiro.KeyValue:=dbEnfermeiroEnfermeiro.Value;

    dbAdm.Open;
    cmpAdm.KeyValue:=dbAdmAdministrativo.Value;
end;

procedure TfrmRelAgendas.chkMedicoClick(Sender: TObject);
begin
    if chkmedico.Checked then
    begin
       cmpmedico.Visible:=false;
       cmpCodmedico.visible:=false;
    end
    else
    begin
       cmpmedico.Visible:=true;
       cmpCodmedico.Visible:=true;
    end;
end;

procedure TfrmRelAgendas.chkHospitalClick(Sender: TObject);
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

procedure TfrmRelAgendas.cmdRelClick(Sender: TObject);
var i,iHospital,iMedico,iCliente,iEnfermeiro,iAdm,iPrestador:integer;
var iLinhaH,iLinhaM,iLInhaC,iLinhaE,iLinhaD,iLinhaO,iLinhaA,iCli,iHosp:string;
var iNomeM,iNomeE,iNomeA,iNome,iClienteID:string;
var iIni:TDate;
begin
     iCliente:=dbClienteCliente.Value;
     iClienteID:=dbClienteClienteID.value;
     iHospital:=dbHospitalHospital.Value;
     iMedico:=dbMedicoAuditor.Value;
     iNomeM:=dbMedicoNome.value;
     iEnfermeiro:=dbEnfermeiroEnfermeiro.Value;
     iNomeE:=dbEnfermeiroNome.value;
     iAdm:=dbAdmAdministrativo.value;
     iNomeA:=dbAdmNome.value;
     iIni:=dtpIni.date;

    if chkCliente.Checked then
       iLinhaC:=''
    else
       iLinhaC:=' and Agenda.Cliente=:Cli ';

    if chkHospital.Checked then
       iLinhaH:=''
    else
       iLinhaH:=' and Agenda.Hospital=:Hosp ';

    if chkMedico.Checked then
       iLinhaM:=''
    else
       iLinhaM:=' and Agenda.Auditor=:Med ';

    if chkEnfermeiro.Checked then
       iLinhaE:=''
    else
       iLinhaE:=' and Agenda.Enfermeiro=:Enf ';

    if chkAdm.Checked then
       iLinhaA:=''
    else
       iLinhaA:=' and Agenda.Administrativo=:Adm ';

     with dmRelatorio do
     begin
         qryAgenda.SQL.Clear;
         qryAgenda.SQL.Text:='Select * from Agenda,Hospital '+
                             'where Agenda.Hospital=Hospital.Hospital and '+
                             '     Data>=:Ini and Data<=:Fim  '+
                              iLinhaC+iLinhaH+iLinhaM+iLinhaE+iLinhaA+
                             'order by ClienteId,Data,Nome';

         qryAgenda.ParamByName('Ini').asdate:=iIni;
         qryAgenda.ParamByName('Fim').asdate:=(iIni+4);

         if not chkCliente.Checked then
         qryAgenda.ParamByName('Cli').Value:=iCliente;

         if not chkMedico.Checked then
            qryAgenda.ParamByName('Med').Value:=iMedico;

         if not chkEnfermeiro.Checked then
            qryAgenda.ParamByName('Enf').Value:=iEnfermeiro;

         if not chkAdm.Checked then
            qryAgenda.ParamByName('Adm').Value:=iAdm;

         if not chkHospital.Checked then
             qryAgenda.ParamByName('Hosp').Value:=iHospital;

         qryAgenda.Open;
         if qryAgenda.RecordCount=0 then
         begin
            ShowMessage('Nenhuma informação a ser impressa');
            qryAgenda.Close;
            abort;
         end;

        relAgenda.Close;
        relAgenda.SQL.Text:='Delete from relAgenda';
        relAgenda.Execute;
        relAgenda.SQL.Text:='Select * from relAgenda order by Ordem,ClienteID';
        relAgenda.Open;

        case rdgOrdem.ItemIndex of
        0:begin //Agenda Cliente
          qryAgenda.IndexFieldNames:='ClienteId,Data,Nome';
          qryAgenda.First;
          while not qryAgenda.Eof do
          begin
            iCli:=qryAgendaClienteID.value;
            while (not qryAgenda.Eof) and (qryAgendaClienteID.value=iCli) do
            begin
                relAgenda.Insert;
                relAgendaClienteID.value:=qryAgendaClienteID.value;
                relAgendaOrdem.value:=qryAgendaClienteID.value;
                for i:=0 to 4 do
                begin
                    while (qryAgendaData.value=(iIni+i)) and (qryAgendaClienteID.value=iCli) and
                          (not qryAgenda.eof) do
                    begin
                        iNome:=qryAgendaNome.Value;
                        if i=0 then
                            relAgendaSegunda.value:=relAgendaSegunda.value+(qryAgendaNome.value)+'-'+qryAgendaServico.value+'-'+qryAgendaObservacao.value+#13;
                        if i=1 then
                            relAgendaTerca.value:=relAgendaTerca.value+(qryAgendaNome.value)+'-'+qryAgendaServico.value+'-'+qryAgendaObservacao.value+#13;
                        if i=2 then
                            relAgendaQuarta.value:=relAgendaQuarta.value+(qryAgendaNome.value)+'-'+qryAgendaServico.value+'-'+qryAgendaObservacao.value+#13;
                        if i=3 then
                            relAgendaQuinta.value:=relAgendaQuinta.value+(qryAgendaNome.value)+'-'+qryAgendaServico.value+'-'+qryAgendaObservacao.value+#13;
                        if i=4 then
                            relAgendaSexta.value:=relAgendaSexta.value+(qryAgendaNome.value)+'-'+qryAgendaServico.value+'-'+qryAgendaObservacao.value+#13;
//                        while (qryAgendaNome.Value=iNome) and (not qryAgenda.eof) do
                          qryAgenda.Next;
                    end;
                end;
                relAgenda.Post;
                end;
            end;
         end;
        1:begin //Agenda Hospitais
         qryAgenda.IndexFieldNames:='ClienteId,Nome,Data';
         qryAgenda.Refresh;
         qryAgenda.First;
         while not qryAgenda.Eof do
         begin
            iHosp:=qryAgendaNome.value;
            iCli:=qryAgendaClienteID.value;
            while (not qryAgenda.Eof) and (qryAgendaClienteID.value=iCli) and
                  (qryAgendaNome.value=iHosp) do
            begin
                relAgenda.Insert;
                relAgendaClienteID.value:=qryAgendaClienteID.value;
                relAgendaOrdem.value:=qryAgendaNome.value;
                for i:=0 to 4 do
                begin
                while (not qryAgenda.Eof) and (qryAgendaClienteID.value=iCli) and
                      (qryAgendaNome.value=iHosp) and (qryAgendaData.value=(iIni+i)) and
                      (not qryAgenda.eof) do
                    begin
                        if i=0 then
                        begin
                            if qryAgendaAuditor.value>0 then
                                relAgendaSegunda.value:=relAgendaSegunda.value+'[M]'+LeftStr(qryAgendaMedNome.value,25)+'-'+qryAgendaServico.value+#13;
                            if qryAgendaEnfermeiro.value>0 then
                                relAgendaSegunda.value:=relAgendaSegunda.value+'[E]'+LeftStr(qryAgendaEnfNome.value,25)+'-'+qryAgendaServico.value+#13;
                            if qryAgendaAdministrativo.value>0 then
                                relAgendaSegunda.value:=relAgendaSegunda.value+'[A]'+LeftStr(qryAgendaAdmNome.value,25)+'-'+qryAgendaServico.value+'-'+
                                                        qryAgendaAdmLocal.value+'-'+qryAgendaAdmPeriodo.value+#13;
                        end;
                        if i=1 then
                        begin
                            if qryAgendaAuditor.value>0 then
                                relAgendaTerca.value:=relAgendaTerca.value+'[M]'+LeftStr(qryAgendaMedNome.value,25)+'-'+qryAgendaServico.value+#13;
                            if qryAgendaEnfermeiro.value>0 then
                                relAgendaTerca.value:=relAgendaTerca.value+'[E]'+LeftStr(qryAgendaEnfNome.value,25)+'-'+qryAgendaServico.value+#13;
                            if qryAgendaAdministrativo.value>0 then
                                relAgendaTerca.value:=relAgendaTerca.value+'[A]'+LeftStr(qryAgendaAdmNome.value,25)+'-'+qryAgendaServico.value+'-'+
                                                        qryAgendaAdmLocal.value+'-'+qryAgendaAdmPeriodo.value+#13;
                        end;
                        if i=2 then
                        begin
                            if qryAgendaAuditor.value>0 then
                                relAgendaQuarta.value:=relAgendaQuarta.value+'[M]'+LeftStr(qryAgendaMedNome.value,25)+'-'+qryAgendaServico.value+#13;
                            if qryAgendaEnfermeiro.value>0 then
                                relAgendaQuarta.value:=relAgendaQuarta.value+'[E]'+LeftStr(qryAgendaEnfNome.value,25)+'-'+qryAgendaServico.value+#13;
                            if qryAgendaAdministrativo.value>0 then
                                relAgendaQuarta.value:=relAgendaQuarta.value+'[A]'+LeftStr(qryAgendaAdmNome.value,25)+'-'+qryAgendaServico.value+'-'+
                                                        qryAgendaAdmLocal.value+'-'+qryAgendaAdmPeriodo.value+#13;
                        end;
                        if i=3 then
                        begin
                            if qryAgendaAuditor.value>0 then
                                relAgendaQuinta.value:=relAgendaQuinta.value+'[M]'+LeftStr(qryAgendaMedNome.value,25)+'-'+qryAgendaServico.value+#13;
                            if qryAgendaEnfermeiro.value>0 then
                                relAgendaQuinta.value:=relAgendaQuinta.value+'[E]'+LeftStr(qryAgendaEnfNome.value,25)+'-'+qryAgendaServico.value+#13;
                            if qryAgendaAdministrativo.value>0 then
                                relAgendaQuinta.value:=relAgendaQuinta.value+'[A]'+LeftStr(qryAgendaAdmNome.value,25)+'-'+qryAgendaServico.value+'-'+
                                                        qryAgendaAdmLocal.value+'-'+qryAgendaAdmPeriodo.value+#13;
                        end;
                        if i=4 then
                        begin
                            if qryAgendaAuditor.value>0 then
                                relAgendaSexta.value:=relAgendaSexta.value+'[M]'+LeftStr(qryAgendaMedNome.value,25)+'-'+qryAgendaServico.value+#13;
                            if qryAgendaEnfermeiro.value>0 then
                                relAgendaSexta.value:=relAgendaSexta.value+'[E]'+LeftStr(qryAgendaEnfNome.value,25)+'-'+qryAgendaServico.value+#13;
                            if qryAgendaAdministrativo.value>0 then
                                relAgendaSexta.value:=relAgendaSexta.value+'[A]'+LeftStr(qryAgendaAdmNome.value,25)+'-'+qryAgendaServico.value+'-'+
                                                        qryAgendaAdmLocal.value+'-'+qryAgendaAdmPeriodo.value+#13;
                        end;
                        qryAgenda.Next;
                    end;
                end;
                relAgenda.Post;
            end;
         end;
         end;
         2:begin //Agenda Medico
         qryAgenda.IndexFieldNames:='ClienteId,Auditor,Data,Nome';
         qryAgenda.Refresh;
         qryAgenda.First;
         while not qryAgenda.Eof do
         begin
            while (qryAgendaAuditor.value=0) and (not qryAgenda.Eof) do
                qryAgenda.Next;
            iPrestador:=qryAgendaAuditor.value;
            iCli:=qryAgendaClienteID.value;
            while (not qryAgenda.Eof) and (qryAgendaClienteID.value=iCli) and
                  (qryAgendaAuditor.value=iPrestador) do
            begin
                relAgenda.Insert;
                relAgendaClienteID.value:=qryAgendaClienteID.value;
                relAgendaOrdem.value:=qryAgendaMedNome.value;
                for i:=0 to 4 do
                begin
                while (not qryAgenda.Eof) and (qryAgendaClienteID.value=iCli) and
                      (qryAgendaAuditor.value=iPrestador) and (qryAgendaData.value=(iIni+i)) and
                      (not qryAgenda.eof) do
                    begin
                        if i=0 then
                            relAgendaSegunda.value:=relAgendaSegunda.value+(qryAgendaNome.value)+'-'+qryAgendaServico.value+'-'+qryAgendaObservacao.value+#13;
                        if i=1 then
                            relAgendaTerca.value:=relAgendaTerca.value+(qryAgendaNome.value)+'-'+qryAgendaServico.value+'-'+qryAgendaObservacao.value+#13;
                        if i=2 then
                            relAgendaQuarta.value:=relAgendaQuarta.value+(qryAgendaNome.value)+'-'+qryAgendaServico.value+'-'+qryAgendaObservacao.value+#13;
                        if i=3 then
                            relAgendaQuinta.value:=relAgendaQuinta.value+(qryAgendaNome.value)+'-'+qryAgendaServico.value+'-'+qryAgendaObservacao.value+#13;
                        if i=4 then
                            relAgendaSexta.value:=relAgendaSexta.value+(qryAgendaNome.value)+'-'+qryAgendaServico.value+'-'+qryAgendaObservacao.value+#13;
                        qryAgenda.Next;
                    end;
                end;
                relAgenda.Post;
            end;
         end;
         end;
         3:begin //Agenda Enf
         qryAgenda.IndexFieldNames:='ClienteId,Enfermeiro,Data,Nome';
         qryAgenda.Refresh;
         qryAgenda.First;
         while not qryAgenda.Eof do
         begin
            while (qryAgendaEnfermeiro.value=0) and (not qryAgenda.Eof) do
                qryAgenda.Next;
            iPrestador:=qryAgendaEnfermeiro.value;
            iCli:=qryAgendaClienteID.value;
            while (not qryAgenda.Eof) and (qryAgendaClienteID.value=iCli) and
                  (qryAgendaEnfermeiro.value=iPrestador) do
            begin
                relAgenda.Insert;
                relAgendaClienteID.value:=qryAgendaClienteID.value;
                relAgendaOrdem.value:=qryAgendaEnfNome.value;
                for i:=0 to 4 do
                begin
                while (not qryAgenda.Eof) and (qryAgendaClienteID.value=iCli) and
                      (qryAgendaEnfermeiro.value=iPrestador) and (qryAgendaData.value=(iIni+i)) and
                      (not qryAgenda.eof) do
                    begin
                        if i=0 then
                            relAgendaSegunda.value:=relAgendaSegunda.value+(qryAgendaNome.value)+'-'+qryAgendaServico.value+'-'+qryAgendaObservacao.value+#13;
                        if i=1 then
                            relAgendaTerca.value:=relAgendaTerca.value+(qryAgendaNome.value)+'-'+qryAgendaServico.value+'-'+qryAgendaObservacao.value+#13;
                        if i=2 then
                            relAgendaQuarta.value:=relAgendaQuarta.value+(qryAgendaNome.value)+'-'+qryAgendaServico.value+'-'+qryAgendaObservacao.value+#13;
                        if i=3 then
                            relAgendaQuinta.value:=relAgendaQuinta.value+(qryAgendaNome.value)+'-'+qryAgendaServico.value+'-'+qryAgendaObservacao.value+#13;
                        if i=4 then
                            relAgendaSexta.value:=relAgendaSexta.value+(qryAgendaNome.value)+'-'+qryAgendaServico.value+'-'+qryAgendaObservacao.value+#13;
                        qryAgenda.Next;
                    end;
                end;
                relAgenda.Post;
            end;
         end;
         end;
         4:begin //Agenda Adm
         qryAgenda.IndexFieldNames:='ClienteId,Administrativo,Data,Nome';
         qryAgenda.Refresh;
         qryAgenda.First;
         while not qryAgenda.Eof do
         begin
            while (qryAgendaAdministrativo.value=0) and (not qryAgenda.Eof) do
                qryAgenda.Next;
            iPrestador:=qryAgendaAdministrativo.value;
            iCli:=qryAgendaClienteID.value;
            while (not qryAgenda.Eof) and (qryAgendaClienteID.value=iCli) and
                  (qryAgendaAdministrativo.value=iPrestador) do
            begin
                relAgenda.Insert;
                relAgendaClienteID.value:=qryAgendaClienteID.value;
                relAgendaOrdem.value:=qryAgendaAdmNome.value;
                for i:=0 to 4 do
                begin
                while (not qryAgenda.Eof) and (qryAgendaClienteID.value=iCli) and
                      (qryAgendaAdministrativo.value=iPrestador) and (qryAgendaData.value=(iIni+i)) and
                      (not qryAgenda.eof) do
                    begin
                        if i=0 then
                            relAgendaSegunda.value:=relAgendaSegunda.value+(qryAgendaNome.value)+'-'+qryAgendaServico.value+'-'+qryAgendaObservacao.value+#13;
                        if i=1 then
                            relAgendaTerca.value:=relAgendaTerca.value+(qryAgendaNome.value)+'-'+qryAgendaServico.value+'-'+qryAgendaObservacao.value+#13;
                        if i=2 then
                            relAgendaQuarta.value:=relAgendaQuarta.value+(qryAgendaNome.value)+'-'+qryAgendaServico.value+'-'+qryAgendaObservacao.value+#13;
                        if i=3 then
                            relAgendaQuinta.value:=relAgendaQuinta.value+(qryAgendaNome.value)+'-'+qryAgendaServico.value+'-'+qryAgendaObservacao.value+#13;
                        if i=4 then
                            relAgendaSexta.value:=relAgendaSexta.value+(qryAgendaNome.value)+'-'+qryAgendaServico.value+'-'+qryAgendaObservacao.value+#13;
                        qryAgenda.Next;
                    end;
                end;
                relAgenda.Post;
            end;
         end;
         end;
         end;

         relAgenda.Refresh;
         relAgenda.First;
         for i:=0 to 4  do
            case i of
            0:frmMenu.rvBBAgenda.SetParam('Segunda',DateToStr(iIni+i)+' - Segunda');
            1:frmMenu.rvBBAgenda.SetParam('Terca',DateToStr(iIni+i)+' - Terça');
            2:frmMenu.rvBBAgenda.SetParam('Quarta',DateToStr(iIni+i)+' - Quarta');
            3:frmMenu.rvBBAgenda.SetParam('Quinta',DateToStr(iIni+i)+' - Quinta');
            4:frmMenu.rvBBAgenda.SetParam('Sexta',DateToStr(iIni+i)+' - Sexta');
            end;

         case rdgOrdem.ItemIndex of
         0:begin
            if chkCliente.Checked then
                frmMenu.rvBBAgenda.SetParam('Titulo','Agenda Clientes')
            else
                frmMenu.rvBBAgenda.SetParam('Titulo','Agenda '+iClienteID);
            end;
         1:frmMenu.rvBBAgenda.SetParam('Titulo','Agenda Hospitais');
         2:frmMenu.rvBBAgenda.SetParam('Titulo','Agenda Prestadores Médicos');
         3:frmMenu.rvBBAgenda.SetParam('Titulo','Agenda Prestadores Enfermeiros');
         4:frmMenu.rvBBAgenda.SetParam('Titulo','Agenda Prestadores Administrativos');
        end;

        frmMenu.rvBBAgenda.SetParam('Titulo1','Periodo de'+DateToStr(iIni)+' a '+DateToStr(iIni+4));

        if not chkMedico.Checked then
           frmMenu.rvBBAgenda.SetParam('Titulo2','Agenda Medico '+iNomeM);

        if not chkEnfermeiro.Checked then
           frmMenu.rvBBAgenda.SetParam('Titulo2','Agenda Enfermeiro '+iNomeE);

        if not chkAdm.Checked then
           frmMenu.rvBBAgenda.SetParam('Titulo2','Agenda Administrativo '+iNomeA);


        case rdgOrdem.ItemIndex of
        0:frmMenu.rvBBAgenda.SelectReport('relAgendaC',true);
        1,2,3,4:frmMenu.rvBBAgenda.SelectReport('relAgendaH',true);
        end;
        frmMenu.rvBBAgenda.Execute;
     end;
end;

procedure TfrmRelAgendas.chkClienteClick(Sender: TObject);
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

procedure TfrmRelAgendas.chkEnfermeiroClick(Sender: TObject);
begin
    if chkenfermeiro.Checked then
    begin
       cmpenfermeiro.Visible:=false;
       cmpCodenfermeiro.visible:=false;
    end
    else
    begin
       cmpenfermeiro.Visible:=true;
       cmpCodenfermeiro.Visible:=true;
    end;

end;

procedure TfrmRelAgendas.rdgOrdemClick(Sender: TObject);
begin
    case rdgOrdem.ItemIndex of
    2:begin
        grpMed.Visible:=true;
        grpEnfermeiro.Visible:=false;
        grpAdm.Visible:=false;
      end;
    3:begin
        grpMed.Visible:=false;
        grpEnfermeiro.Visible:=true;
        grpAdm.Visible:=false;
      end;
    4:begin
        grpMed.Visible:=false;
        grpEnfermeiro.Visible:=false;
        grpAdm.Visible:=true;
      end;
    else
    begin
        grpMed.Visible:=true;
        grpEnfermeiro.Visible:=true;
        grpAdm.Visible:=true;
    end;
    end;

    case rdgOrdem.ItemIndex of
    0:cmdRel1.Visible:=false;
    else cmdRel1.Visible:=true;
    end;
end;

procedure TfrmRelAgendas.chkAdmClick(Sender: TObject);
begin
    if chkAdm.Checked then
    begin
       cmpAdm.Visible:=false;
       cmpCodAdm.visible:=false;
    end
    else
    begin
       cmpAdm.Visible:=true;
       cmpCodAdm.Visible:=true;
    end;

end;

procedure TfrmRelAgendas.cmdRel1Click(Sender: TObject);
var i,iHospital,iMedico,iCliente,iEnfermeiro,iAdm,iPrestador:integer;
var iLinhaH,iLinhaM,iLinhaE,iLinhaD,iLinhaO,iLinhaA,iCli,iHosp:string;
var iNomeM,iNomeE,iNomeA,iNome,iClienteID:string;
var iIni:TDate;
begin
     iCliente:=dbClienteCliente.Value;
     iClienteID:=dbClienteClienteID.value;
     iHospital:=dbHospitalHospital.Value;
     iMedico:=dbMedicoAuditor.Value;
     iNomeM:=dbMedicoNome.value;
     iEnfermeiro:=dbEnfermeiroEnfermeiro.Value;
     iNomeE:=dbEnfermeiroNome.value;
     iAdm:=dbAdmAdministrativo.value;
     iNomeA:=dbAdmNome.value;
     iIni:=dtpIni.date;

    if chkHospital.Checked then
       iLinhaH:=''
    else
       iLinhaH:=' and Agenda.Hospital=:Hosp ';

    if chkMedico.Checked then
       iLinhaM:=''
    else
       iLinhaM:=' and Agenda.Auditor=:Med ';

    if chkEnfermeiro.Checked then
       iLinhaE:=''
    else
       iLinhaE:=' and Agenda.Enfermeiro=:Enf ';

    if chkAdm.Checked then
       iLinhaA:=''
    else
       iLinhaA:=' and Agenda.Administrativo=:Adm ';

     with dmRelatorio do
     begin
        relAgenda.Close;
        relAgenda.SQL.Text:='Delete from relAgenda';
        relAgenda.Execute;
        relAgenda.SQL.Text:='Select * from relAgenda order by Ordem,ClienteID';
        relAgenda.Open;

        case rdgOrdem.ItemIndex of
        1:begin //Agenda Hospitais

         qryAgendaH.SQL.Clear;
         qryAgendaH.SQL.Text:='Select Data,Nome,Agenda.Hospital,Servico,Auditor,Agenda.Enfermeiro,Administrativo '+
                             'from Agenda,Hospital '+
                             'where Agenda.Hospital=Hospital.Hospital and '+
                             '      Data>=:Ini and Data<=:Fim  '+
                              iLinhaH+iLinhaM+iLinhaE+iLinhaA+
                             'group by Data,Nome,Agenda.Hospital,Servico,Auditor,Agenda.Enfermeiro,Administrativo '+
                             'order by Data,Nome  ';

         qryAgendaH.ParamByName('Ini').asdate:=iIni;
         qryAgendaH.ParamByName('Fim').asdate:=(iIni+4);

         if not chkMedico.Checked then
            qryAgendaH.ParamByName('Med').Value:=iMedico;

         if not chkEnfermeiro.Checked then
            qryAgendaH.ParamByName('Enf').Value:=iEnfermeiro;

         if not chkAdm.Checked then
            qryAgendaH.ParamByName('Adm').Value:=iAdm;

         if not chkHospital.Checked then
             qryAgendaH.ParamByName('Hosp').Value:=iHospital;

         qryAgendaH.Open;
         if qryAgendaH.RecordCount=0 then
         begin
            ShowMessage('Nenhuma informação a ser impressa');
            qryAgendaH.Close;
            abort;
         end;

         qryAgendaH.IndexFieldNames:='Nome,Data';
         qryAgendaH.Refresh;
         qryAgendaH.First;
         while not qryAgendaH.Eof do
         begin
            iHosp:=qryAgendaHNome.value;
            while (not qryAgendaH.Eof) and (qryAgendaHNome.value=iHosp) do
            begin
                if relAgenda.Locate('Ordem',qryAgendaHNome.value,[]) then
                    relAgenda.Edit
                else
                begin
                    relAgenda.Insert;
                    relAgendaClienteID.value:='Todos';
                    relAgendaOrdem.value:=qryAgendaHNome.value;
                end;
                for i:=0 to 4 do
                begin
                while (not qryAgendaH.Eof) and (qryAgendaHNome.value=iHosp) and
                      (qryAgendaHData.value=(iIni+i)) and
                      (not qryAgendaH.eof) do
                    begin
                        if i=0 then
                        begin
                            if qryAgendaHAuditor.value>0 then
                                relAgendaSegunda.value:=relAgendaSegunda.value+'[M]'+LeftStr(qryAgendaHMedNome.value,25)+'-'+qryAgendaHServico.value+#13;
                            if qryAgendaHEnfermeiro.value>0 then
                                relAgendaSegunda.value:=relAgendaSegunda.value+'[E]'+LeftStr(qryAgendaHEnfNome.value,25)+'-'+qryAgendaHServico.value+#13;
                            if qryAgendaHAdministrativo.value>0 then
                                relAgendaSegunda.value:=relAgendaSegunda.value+'[A]'+LeftStr(qryAgendaHAdmNome.value,25)+'-'+qryAgendaHServico.value+'-'+
                                                        qryAgendaAdmLocal.value+'-'+qryAgendaAdmPeriodo.value+#13;
                        end;
                        if i=1 then
                        begin
                            if qryAgendaHAuditor.value>0 then
                                relAgendaTerca.value:=relAgendaTerca.value+'[M]'+LeftStr(qryAgendaHMedNome.value,25)+'-'+qryAgendaHServico.value+#13;
                            if qryAgendaHEnfermeiro.value>0 then
                                relAgendaTerca.value:=relAgendaTerca.value+'[E]'+LeftStr(qryAgendaHEnfNome.value,25)+'-'+qryAgendaHServico.value+#13;
                            if qryAgendaHAdministrativo.value>0 then
                                relAgendaTerca.value:=relAgendaTerca.value+'[A]'+LeftStr(qryAgendaHAdmNome.value,25)+'-'+qryAgendaHServico.value+'-'+
                                                      qryAgendaAdmLocal.value+'-'+qryAgendaAdmPeriodo.value+#13;
                        end;
                        if i=2 then
                        begin
                            if qryAgendaHAuditor.value>0 then
                                relAgendaQuarta.value:=relAgendaQuarta.value+'[M]'+LeftStr(qryAgendaHMedNome.value,25)+'-'+qryAgendaHServico.value+#13;
                            if qryAgendaHEnfermeiro.value>0 then
                                relAgendaQuarta.value:=relAgendaQuarta.value+'[E]'+LeftStr(qryAgendaHEnfNome.value,25)+'-'+qryAgendaHServico.value+#13;
                            if qryAgendaHAdministrativo.value>0 then
                                relAgendaQuarta.value:=relAgendaQuarta.value+'[A]'+LeftStr(qryAgendaHAdmNome.value,25)+'-'+qryAgendaHServico.value+'-'+
                                                       qryAgendaAdmLocal.value+'-'+qryAgendaAdmPeriodo.value+#13;
                        end;
                        if i=3 then
                        begin
                            if qryAgendaHAuditor.value>0 then
                                relAgendaQuinta.value:=relAgendaQuinta.value+'[M]'+LeftStr(qryAgendaHMedNome.value,25)+'-'+qryAgendaHServico.value+#13;
                            if qryAgendaHEnfermeiro.value>0 then
                                relAgendaQuinta.value:=relAgendaQuinta.value+'[E]'+LeftStr(qryAgendaHEnfNome.value,25)+'-'+qryAgendaHServico.value+#13;
                            if qryAgendaHAdministrativo.value>0 then
                                relAgendaQuinta.value:=relAgendaQuinta.value+'[A]'+LeftStr(qryAgendaHAdmNome.value,25)+'-'+qryAgendaHServico.value+'-'+
                                                        qryAgendaAdmLocal.value+'-'+qryAgendaAdmPeriodo.value+#13;
                        end;
                        if i=4 then
                        begin
                            if qryAgendaHAuditor.value>0 then
                                relAgendaSexta.value:=relAgendaSexta.value+'[M]'+LeftStr(qryAgendaHMedNome.value,25)+'-'+qryAgendaHServico.value+#13;
                            if qryAgendaHEnfermeiro.value>0 then
                                relAgendaSexta.value:=relAgendaSexta.value+'[E]'+LeftStr(qryAgendaHEnfNome.value,25)+'-'+qryAgendaHServico.value+#13;
                            if qryAgendaHAdministrativo.value>0 then
                                relAgendaSexta.value:=relAgendaSexta.value+'[A]'+LeftStr(qryAgendaHAdmNome.value,25)+'-'+qryAgendaHServico.value+'-'+
                                                      qryAgendaAdmLocal.value+'-'+qryAgendaAdmPeriodo.value+#13;
                        end;
                        qryAgendaH.Next;
                    end;
                end;
                relAgenda.Post;
            end;
         end;
         end;
         2:begin //Agenda Medico

         qryAgendaP.SQL.Clear;
         qryAgendaP.SQL.Text:='Select Data,Nome,Agenda.Hospital,Servico,Auditor '+
                             'from Agenda,Hospital '+
                             'where Agenda.Hospital=Hospital.Hospital and '+
                             '      Data>=:Ini and Data<=:Fim  '+
                              iLinhaH+iLinhaM+
                             'group by Data,Nome,Agenda.Hospital,Servico,Auditor '+
                             'order by Data,Nome  ';

         qryAgendaP.ParamByName('Ini').asdate:=iIni;
         qryAgendaP.ParamByName('Fim').asdate:=(iIni+4);

         if not chkMedico.Checked then
            qryAgendaP.ParamByName('Med').Value:=iMedico;

         if not chkHospital.Checked then
             qryAgendaP.ParamByName('Hosp').Value:=iHospital;

         qryAgendaP.Open;
         if qryAgendaP.RecordCount=0 then
         begin
            ShowMessage('Nenhuma informação a ser impressa');
            qryAgendaP.Close;
            abort;
         end;

         qryAgendaP.IndexFieldNames:='Auditor,Data,Nome';
         qryAgendaP.Refresh;
         qryAgendaP.First;
         while not qryAgendaP.Eof do
         begin
            while (qryAgendaPAuditor.value=0) and (not qryAgendaP.Eof) do
                qryAgendaP.Next;
            iPrestador:=qryAgendaPAuditor.value;
            while (not qryAgendaP.Eof) and (qryAgendaPAuditor.value=iPrestador) do
            begin
                if relAgenda.Locate('Ordem',qryAgendaPMedNome.value,[]) then
                    relAgenda.Edit
                else
                begin
                    relAgenda.Insert;
                    relAgendaClienteID.value:='Todos';
                    relAgendaOrdem.value:=qryAgendaPMedNome.value;
                end;
                for i:=0 to 4 do
                begin
                while (not qryAgendaP.Eof) and (qryAgendaPAuditor.value=iPrestador) and
                      (qryAgendaPData.value=(iIni+i)) and
                      (not qryAgendaP.eof) do
                    begin
                        if i=0 then
                            relAgendaSegunda.value:=relAgendaSegunda.value+(qryAgendaPNome.value)+'-'+qryAgendaPServico.value+#13;
                        if i=1 then
                            relAgendaTerca.value:=relAgendaTerca.value+(qryAgendaPNome.value)+'-'+qryAgendaPServico.value+#13;
                        if i=2 then
                            relAgendaQuarta.value:=relAgendaQuarta.value+(qryAgendaPNome.value)+'-'+qryAgendaPServico.value+#13;
                        if i=3 then
                            relAgendaQuinta.value:=relAgendaQuinta.value+(qryAgendaPNome.value)+'-'+qryAgendaPServico.value+#13;
                        if i=4 then
                            relAgendaSexta.value:=relAgendaSexta.value+(qryAgendaPNome.value)+'-'+qryAgendaPServico.value+#13;
                        qryAgendaP.Next;
                    end;
                end;
                relAgenda.Post;
            end;
         end;
         end;
         3:begin //Agenda Enf
         qryAgendaP.SQL.Clear;
         qryAgendaP.SQL.Text:='Select Data,Nome,Agenda.Hospital,Servico,Agenda.Enfermeiro as Auditor '+
                             'from Agenda,Hospital '+
                             'where Agenda.Hospital=Hospital.Hospital and '+
                             '      Data>=:Ini and Data<=:Fim  '+
                              iLinhaH+iLinhaE+
                             'group by Data,Nome,Agenda.Hospital,Servico,Agenda.Enfermeiro '+
                             'order by Data,Nome  ';

         qryAgendaP.ParamByName('Ini').asdate:=iIni;
         qryAgendaP.ParamByName('Fim').asdate:=(iIni+4);

         if not chkEnfermeiro.Checked then
            qryAgendaP.ParamByName('Enf').Value:=iEnfermeiro;

         if not chkHospital.Checked then
             qryAgendaP.ParamByName('Hosp').Value:=iHospital;

         qryAgendaP.Open;
         if qryAgendaP.RecordCount=0 then
         begin
            ShowMessage('Nenhuma informação a ser impressa');
            qryAgendaP.Close;
            abort;
         end;

         qryAgendaP.IndexFieldNames:='Auditor,Data,Nome';
         qryAgendaP.Refresh;
         qryAgendaP.First;
         while not qryAgendaP.Eof do
         begin
            while (qryAgendaPAuditor.value=0) and (not qryAgendaP.Eof) do
                qryAgendaP.Next;
            iPrestador:=qryAgendaPAuditor.value;
            while (not qryAgendaP.Eof) and (qryAgendaPAuditor.value=iPrestador) do
            begin
                if relAgenda.Locate('Ordem',qryAgendaPEnfNome.value,[]) then
                    relAgenda.Edit
                else
                begin
                    relAgenda.Insert;
                    relAgendaClienteID.value:='Todos';
                    relAgendaOrdem.value:=qryAgendaPEnfNome.value;
                end;
                for i:=0 to 4 do
                begin
                while (not qryAgendaP.Eof) and
                      (qryAgendaPAuditor.value=iPrestador) and (qryAgendaPData.value=(iIni+i)) and
                      (not qryAgendaP.eof) do
                    begin
                        if i=0 then
                            relAgendaSegunda.value:=relAgendaSegunda.value+(qryAgendaPNome.value)+'-'+qryAgendaPServico.value+#13;
                        if i=1 then
                            relAgendaTerca.value:=relAgendaTerca.value+(qryAgendaPNome.value)+'-'+qryAgendaPServico.value+#13;
                        if i=2 then
                            relAgendaQuarta.value:=relAgendaQuarta.value+(qryAgendaPNome.value)+'-'+qryAgendaPServico.value+#13;
                        if i=3 then
                            relAgendaQuinta.value:=relAgendaQuinta.value+(qryAgendaPNome.value)+'-'+qryAgendaPServico.value+#13;
                        if i=4 then
                            relAgendaSexta.value:=relAgendaSexta.value+(qryAgendaPNome.value)+'-'+qryAgendaPServico.value+#13;
                        qryAgendaP.Next;
                    end;
                end;
                relAgenda.Post;
            end;
         end;
         end;
         4:begin //Agenda Adm
         qryAgendaP.SQL.Clear;
         qryAgendaP.SQL.Text:='Select Data,Nome,Agenda.Hospital,Servico,Administrativo as Auditor '+
                             'from Agenda,Hospital '+
                             'where Agenda.Hospital=Hospital.Hospital and '+
                             '      Data>=:Ini and Data<=:Fim  '+
                             iLinhaH+iLinhaA+
                             'group by Data,Nome,Agenda.Hospital,Servico,Administrativo '+
                             'order by Data,Nome  ';

         qryAgendaP.ParamByName('Ini').asdate:=iIni;
         qryAgendaP.ParamByName('Fim').asdate:=(iIni+4);

         if not chkAdm.Checked then
            qryAgendaP.ParamByName('Adm').Value:=iAdm;

         if not chkHospital.Checked then
             qryAgendaP.ParamByName('Hosp').Value:=iHospital;

         qryAgendaP.Open;
         if qryAgendaP.RecordCount=0 then
         begin
            ShowMessage('Nenhuma informação a ser impressa');
            qryAgendaP.Close;
            abort;
         end;

         qryAgendaP.IndexFieldNames:='Auditor,Data,Nome';
         qryAgendaP.Refresh;
         qryAgendaP.First;
         while not qryAgendaP.Eof do
         begin
            while (qryAgendaPAuditor.value=0) and (not qryAgendaP.Eof) do
                qryAgendaP.Next;
            iPrestador:=qryAgendaPAuditor.value;
            while (not qryAgendaP.Eof) and (qryAgendaPAuditor.value=iPrestador) do
            begin
                if relAgenda.Locate('Ordem',qryAgendaPAdmNome.value,[]) then
                    relAgenda.Edit
                else
                begin
                    relAgenda.Insert;
                    relAgendaClienteID.value:='Todos';
                    relAgendaOrdem.value:=qryAgendaPAdmNome.value;
                end;
                for i:=0 to 4 do
                begin
                while (not qryAgendaP.Eof) and
                      (qryAgendaPAuditor.value=iPrestador) and (qryAgendaPData.value=(iIni+i)) and
                      (not qryAgendaP.eof) do
                    begin
                        if i=0 then
                            relAgendaSegunda.value:=relAgendaSegunda.value+(qryAgendaPNome.value)+'-'+qryAgendaPServico.value+#13;
                        if i=1 then
                            relAgendaTerca.value:=relAgendaTerca.value+(qryAgendaPNome.value)+'-'+qryAgendaPServico.value+#13;
                        if i=2 then
                            relAgendaQuarta.value:=relAgendaQuarta.value+(qryAgendaPNome.value)+'-'+qryAgendaPServico.value+#13;
                        if i=3 then
                            relAgendaQuinta.value:=relAgendaQuinta.value+(qryAgendaPNome.value)+'-'+qryAgendaPServico.value+#13;
                        if i=4 then
                            relAgendaSexta.value:=relAgendaSexta.value+(qryAgendaPNome.value)+'-'+qryAgendaPServico.value+#13;
                        qryAgendaP.Next;
                    end;
                end;
                relAgenda.Post;
            end;
         end;
         end;
         end;

         relAgenda.Refresh;
         relAgenda.First;
         for i:=0 to 4  do
            case i of
            0:frmMenu.rvBBAgenda.SetParam('Segunda',DateToStr(iIni+i)+' - Segunda');
            1:frmMenu.rvBBAgenda.SetParam('Terca',DateToStr(iIni+i)+' - Terça');
            2:frmMenu.rvBBAgenda.SetParam('Quarta',DateToStr(iIni+i)+' - Quarta');
            3:frmMenu.rvBBAgenda.SetParam('Quinta',DateToStr(iIni+i)+' - Quinta');
            4:frmMenu.rvBBAgenda.SetParam('Sexta',DateToStr(iIni+i)+' - Sexta');
            end;

         case rdgOrdem.ItemIndex of
         0:begin
            if chkCliente.Checked then
                frmMenu.rvBBAgenda.SetParam('Titulo','Agenda Clientes')
            else
                frmMenu.rvBBAgenda.SetParam('Titulo','Agenda '+iClienteID);
            end;
         1:frmMenu.rvBBAgenda.SetParam('Titulo','Agenda Hospitais');
         2:frmMenu.rvBBAgenda.SetParam('Titulo','Agenda Prestadores Médicos');
         3:frmMenu.rvBBAgenda.SetParam('Titulo','Agenda Prestadores Enfermeiros');
         4:frmMenu.rvBBAgenda.SetParam('Titulo','Agenda Prestadores Administrativos');
        end;

        frmMenu.rvBBAgenda.SetParam('Titulo1','Periodo de'+DateToStr(iIni)+' a '+DateToStr(iIni+4));

        if not chkMedico.Checked then
           frmMenu.rvBBAgenda.SetParam('Titulo2','Agenda Medico '+iNomeM);

        if not chkEnfermeiro.Checked then
           frmMenu.rvBBAgenda.SetParam('Titulo2','Agenda Enfermeiro '+iNomeE);

        if not chkAdm.Checked then
           frmMenu.rvBBAgenda.SetParam('Titulo2','Agenda Administrativo '+iNomeA);


        case rdgOrdem.ItemIndex of
        0:frmMenu.rvBBAgenda.SelectReport('relAgendaC',true);
        1,2,3,4:frmMenu.rvBBAgenda.SelectReport('relAgendaH1',true);
        end;
        frmMenu.rvBBAgenda.Execute;
     end;
end;

end.

