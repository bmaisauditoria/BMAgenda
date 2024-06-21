unit frmAgendaNovos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, DBCtrls, DB, MemDS, DBAccess, MSAccess,
  Buttons, ExtCtrls, ComCtrls;

type
  TfrmAgendaNovo = class(TForm)
    dbAgenda: TMSQuery;
    dsAgenda: TDataSource;
    dbAgendaP: TMSQuery;
    dsAgendaP: TDataSource;
    dbAgendaPTipo: TStringField;
    dbAgendaPPrestador: TIntegerField;
    dbAgendaPNome: TStringField;
    dbAgendaPOk: TBooleanField;
    lblData: TLabel;
    dbAgendaData: TDateTimeField;
    dbAgendaCliente: TIntegerField;
    dbAgendaHospital: TIntegerField;
    dbAgendaServico: TStringField;
    dbAgendaAuditor: TIntegerField;
    dbAgendaEnfermeiro: TIntegerField;
    dbAgendaAdministrativo: TIntegerField;
    dbAgendaQtdContas: TIntegerField;
    dbAgendaDataConta: TDateTimeField;
    dbAgendaClienteID: TStringField;
    dbAgendaObservacao: TStringField;
    dbAgendaDataInclusao: TDateTimeField;
    dbAgendaUsuario: TStringField;
    dbAgendaFechaConta: TWordField;
    dbAgendaAdmLocal: TStringField;
    dbAgendaAdmPeriodo: TStringField;
    dbAgendaQtdContasP: TIntegerField;
    dbAgendaUsuarioI: TStringField;
    dbAgendaDataAlteracao: TDateTimeField;
    Label6: TLabel;
    Label5: TLabel;
    Panel2: TPanel;
    dbAdm: TMSTable;
    dbAdmAdministrativo: TIntegerField;
    dbAdmNome: TStringField;
    dbAdmemail: TStringField;
    dbAdmDataFim: TDateTimeField;
    dsAdm: TDataSource;
    dbEscalaSelecionada: TMSQuery;
    dbEscalaSelecionadaCliente: TIntegerField;
    dbEscalaSelecionadaHospital: TIntegerField;
    dsEscalaSelecionada: TDataSource;
    dbCliente: TMSQuery;
    dbClienteCliente: TIntegerField;
    dbClienteNome: TStringField;
    dbClienteDataFim: TDateTimeField;
    dbClienteClienteID: TStringField;
    dsCliente: TDataSource;
    dsHospital: TDataSource;
    dbHospital: TMSQuery;
    dbEscalaSelecionadaNome: TStringField;
    dbHospitalHospital: TIntegerField;
    dbHospitalNome: TStringField;
    tabBusca: TTabControl;
    Panel1: TPanel;
    lblHospital: TLabel;
    lblCliente: TLabel;
    cmbHospitalNovo: TDBLookupComboBox;
    cmbClienteNovo: TDBLookupComboBox;
    dbEscalaSelecionadaClienteID: TStringField;
    dbClienteAdm: TMSTable;
    dbClienteAdmCliente: TIntegerField;
    dbClienteAdmHospital: TIntegerField;
    dbClienteAdmHospitalNome: TStringField;
    dbClienteAdmDataUsuario: TDateTimeField;
    dbClienteAdmUsuario: TStringField;
    dsClienteAdm: TDataSource;
    grdEscalaSelecionada: TDBGrid;
    dbAgendaPCliente: TIntegerField;
    dbAgendaPHospital: TIntegerField;
    dbAgendaPServico: TStringField;
    Label2: TLabel;
    cmbServicoNovo: TComboBox;
    grdPrestadores: TDBGrid;
    cmdNovo2: TBitBtn;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SelecionaDadosAgenda(Sender: TObject);
    procedure dbAgendaPOkGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure dbAgendaPOkSetText(Sender: TField; const Text: String);
    procedure grdPrestadoresDblClick(Sender: TObject);
    procedure grdPrestadoresDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure cmdNovo2Click(Sender: TObject);
    procedure tabBuscaChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAgendaNovo: TfrmAgendaNovo;

implementation

uses frmAgendas, frmPrincipal;

{$R *.dfm}

procedure TfrmAgendaNovo.FormShow(Sender: TObject);
begin
    dbCliente.OPen;
    dbClienteAdm.Open;
    dbHospital.Open;

    tabBusca.TabIndex:=0; //Hospital;
    lblCliente.visible:=false;
    lblHospital.visible:=true;
    cmbClienteNovo.visible:=false;
    cmbClienteNOvo.KeyValue:=dbClienteClienteID.value;
    cmbHospitalNovo.visible:=true;
    cmbHospitalNovo.KeyValue:=dbHospitalHospital.value;

    dbEscalaSelecionada.IndexFieldNames:='ClienteID;Cliente;Nome';
    dbEscalaSelecionada.MasterSource:=dsHospital;
    dbEscalaSelecionada.MasterFields:='Hospital';
    dbEscalaSelecionada.DetailFields:='EscalaPadrao.Hospital';
    grdEscalaSelecionada.Columns[0].Visible:=false;
    grdEscalaSelecionada.Columns[1].Visible:=true;

    dbEscalaSelecionada.SQL.Text:='SELECT     EscalaPadrao.Cliente, EscalaPadrao.Hospital, Hospital.Nome, Cliente.ClienteID  '+
                                  'FROM       EscalaPadrao '+
                                  'INNER JOIN Hospital ON EscalaPadrao.Hospital = Hospital.Hospital '+
                                  'INNER JOIN CLIENTE  ON EscalaPadrao.Cliente = Cliente.Cliente '+
                                  'WHERE     (EscalaPadrao.DataFim IS NULL) and '+
                                  '          (EscalaPadrao.Servico=:xEscala) '+
                                  'GROUP BY EscalaPadrao.Cliente, EscalaPadrao.Hospital, Hospital.Nome, Cliente.ClienteID  '+
                                  'order by Cliente.ClienteID,EscalaPadrao.Cliente,Hospital.Nome';
    dbEscalaSelecionada.ParamByName('xEscala').Value:='P';
    dbEscalaSelecionada.Open;

    dbAgenda.Open;
    dbAgendaP.Close;
    dbAgendaP.SQL.Text:='Delete from relAgendaPrestador';
    dbAgendaP.Execute;
    dbAgendaP.SQL.Text:='Select * from relAgendaPrestador order by Tipo desc, Nome';
    dbAgendaP.Open;
    dbAdm.Open;

    SelecionaDadosAgenda(sender);

end;

procedure TfrmAgendaNovo.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    dbClienteAdm.Close;
    dbCliente.Close;
    dbHospital.Close;
    dbEscalaSelecionada.Close;
    dbAgenda.Close;
    dbAgendaP.close;
    dbAdm.Close;

end;

procedure TfrmAgendaNovo.SelecionaDadosAgenda(Sender: TObject);
var inome,iServico:string;
var i,iHospital:integer;
begin
with frmAgenda do
begin

    dbAgendaP.Close;
    dbAgendaP.SQL.Text:='Delete from relAgendaPrestador';
    dbAgendaP.Execute;
    dbAgendaP.SQL.Text:='Select * from relAgendaPrestador order by Cliente, Hospital, Tipo desc, Nome';
    dbAgendaP.Open;

    iServico:=cmbServicoNovo.Text;
    dbEscalaSelecionada.ParamByName('xEscala').Value:=iServico;
    dbEscalaSelecionada.Execute;

    dbEscalaSelecionada.First;
    while not dbEscalaSelecionada.eof do
    begin
        case tabBusca.TabIndex of
        0:begin
            iHospital:=cmbHospitalNovo.KeyValue;
            iClienteID:=dbEscalaSelecionadaClienteID.value;
            iCliente:=dbEscalaSelecionadaCliente.value;
        end;
        1:begin
            iClienteID:=cmbClienteNovo.KeyValue;
            dbCliente.Locate('ClienteID',iClienteID,[]);
            iCliente:=dbClienteCliente.value;
            iHospital:=dbEscalaSelecionadaHospital.value;;
        end;
        end;

        if (iCliente<>0) and (iHospital<>0) and (iServico<>'') then
        begin
            dbEscala.Locate('Cliente;Hospital;Tipo;Servico',VarArrayof([iCliente,iHospital,'M',iServico]),[]);
            while (dbEscalaCliente.value=iCliente) and
                  (dbEscalaHospital.value=iHospital) and
                  (dbEscalaServico.value=iServico) and
                  (dbEscalaTipo.value='M') and
                  (not dbEscala.Eof) do
            begin
                if (dbEscalaDataInicio.value<=iData) and
                   ((dbEscalaDataFim.value>=iData) or (dbEscalaDataFim.isnull))  then
                begin
                    if not dbAgendaP.Locate('Tipo;Prestador',VarArrayof(['M',dbEscalaAuditor.value]),[]) then
                    begin
                        dbAuditor.Locate('Auditor',dbEscalaAuditor.value,[]);
                        inome:=dbAuditorNome.value;
                        dbAgendaP.Insert;
                        dbAgendaPCliente.value:=icliente;
                        dbAgendaPHospital.value:=ihospital;
                        dbAgendaPTipo.value:='M';
                        dbAgendaPPrestador.value:=dbEscalaAuditor.value;
                        dbAgendaPServico.value:=iServico;
                        dbAgendaPNome.Value:=inome;
                        dbAgendaPok.Value:=true;
                        dbAgendaP.Post;
                    end;
                end;
                dbEscala.Next;
            end;

            dbEscala.Locate('Cliente;Hospital;Tipo;Servico',VarArrayof([iCliente,iHospital,'E',iServico]),[]);
            while (dbEscalaCliente.value=iCliente) and
                  (dbEscalaHospital.value=iHospital) and
                  (dbEscalaServico.value=iServico) and
                  (dbEscalaTipo.value='E') and
                (not dbEscala.Eof) do
            begin
                if (dbEscalaDataInicio.value<=iData) and
                  ((dbEscalaDataFim.value>=iData) or (dbEscalaDataFim.isnull))  then
                begin
                    if not dbAgendaP.Locate('Tipo;Prestador',VarArrayof(['E',dbEscalaAuditor.value]),[]) then
                    begin
                        dbEnfermeiro.Locate('Enfermeiro',dbEscalaAuditor.value,[]);
                        inome:=dbEnfermeiroNome.value;
                        dbAgendaP.Insert;
                        dbAgendaPCliente.value:=icliente;
                        dbAgendaPHospital.value:=ihospital;
                        dbAgendaPTipo.value:='E';
                        dbAgendaPPrestador.value:=dbEscalaAuditor.value;
                        dbAgendaPNome.value:=inome;
                        dbAgendaPServico.value:=iServico;
                        dbAgendaPok.Value:=true;
                        dbAgendaP.Post;
                    end;
                end;
                dbEscala.Next;
            end;
        end;
        dbEscalaSelecionada.Next;
    end;

end;
end;

procedure TfrmAgendaNovo.dbAgendaPOkGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
    if dbAgendaPOk.value=false then
       text:='Não';
    if dbAgendaPOk.value=true  then
       text:='Sim';
end;

procedure TfrmAgendaNovo.dbAgendaPOkSetText(Sender: TField;
  const Text: String);
begin
    if text='Não' then
        dbAgendaPOk.value:=false;
    if text='Sim' then
        dbAgendaPOk.value:=true;
end;

procedure TfrmAgendaNovo.grdPrestadoresDblClick(Sender: TObject);
begin
    dbAgendaP.Edit;
    if dbAgendaPOk.value=True then
        dbAgendaPOk.value:=false
    else
        dbAgendaPOk.value:=true;
    dbAgendaP.Post;    
end;

procedure TfrmAgendaNovo.grdPrestadoresDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
     if dbAgendaPOk.value=false then
        grdPrestadores.Canvas.Font.Color:=clRed;

     grdPrestadores.DefaultDrawDataCell(Rect,grdPrestadores.Columns[DataCol].field,State);
end;

procedure TfrmAgendaNovo.cmdNovo2Click(Sender: TObject);
var icli,iadm,i:integer;
begin
    if dbAgendaP.Locate('Prestador',999999,[]) then
    begin
        ShowMessage('Defina os prestadores de cobertura antes de incluir na Agenda');
        abort;
    end;
    i:=0;
    dbEscalaSelecionada.First;
    while not dbEscalaSelecionada.eof do
    begin

        frmAgenda.dbCliente.Locate('ClienteID',cmbClienteNovo.KeyValue,[]);
        iCli:=dbEscalaSelecionadaCliente.value;

        if not dbClienteAdm.Locate('Cliente;Hospital',VarArrayof([icli,cmbHospitalNovo.KeyValue]),[]) then
            iadm:=999999 // sem administrativo
        else
            iadm:=0;

        dbAgendaP.First;
        while not dbAgendaP.eof do
        begin
            if dbAgendaPok.value=false then
                dbAgendaP.Delete
            else
                dbAgendaP.Next;
        end;
        dbAgendaP.First;
        while not dbAgendaP.eof do
        begin
            if dbAgendaPTipo.value='M' then
                if dbAgenda.Locate('Cliente;Data;Hospital;Servico;Auditor',
                                VarArrayof([iCli,frmAgenda.iData,cmbHospitalNovo.keyvalue,dbAgendaPServico.value,dbAgendaPPrestador.value]),[]) then
                    dbAgendaP.Delete
                else
                    dbAgendaP.Next
            else
                if dbAgenda.Locate('Cliente;Data;Hospital;Servico;Enfermeiro',
                                VarArrayof([iCli,frmAgenda.iData,cmbHospitalNovo.keyvalue,dbAgendaPServico.value,dbAgendaPPrestador.value]),[]) then
                    dbAgendaP.Delete
                else
                    dbAgendaP.Next;
        end;

        while dbAgendaP.RecordCount>0 do
        begin
            dbAgenda.Insert;
            dbAgendaData.value:=frmAgenda.iData;
            dbAgendaCliente.value:=iCli;
            dbAgendaClienteID.value:=dbEscalaSelecionadaClienteID.value;
            dbAgendaHospital.value:=dbEscalaSelecionadaHospital.value;
            dbAgendaServico.value:=dbAgendaPServico.value;
            dbAgendaFechaConta.value:=1;
            dbAgendaQtdContas.value:=0;
            dbAgendaQtdContasP.value:=0;
            dbAgendaAuditor.value:=0;
            dbAgendaEnfermeiro.value:=0;
            dbAgendaAdministrativo.value:=iadm;
            dbAgendaDataInclusao.value:=date;
            dbAgendaUsuarioI.value:=iUsuario;

            if dbAgendaP.Locate('Tipo','M',[]) then
            begin
                dbAgendaAuditor.value:=dbAgendaPPrestador.value;
                dbAgendaP.Delete;
            end;
            if dbAgendaP.Locate('Tipo','E',[]) then
            begin
                dbAgendaEnfermeiro.value:=dbAgendaPPrestador.value;
                dbAgendaP.Delete;
            end;
            dbAgenda.Post;
            i:=i+1;
        end;
        dbEscalaSelecionada.Next;
    end;
    frmAgenda.Atualiza;
    frmAgendaNovo.Close;
    ShowMessage(IntToStr(i)+' apontamamento(s) de Agenda lançado(s)');
end;

{procedure TfrmAgendaNovo.BitBtn1Click(Sender: TObject);       // INCLUIR ADMINISTRATIVO
var iadm:integer;
begin
    iadm:=dbAdmAdministrativo.value;

    dbAgenda.Insert;
    dbAgendaData.value:=frmAgenda.iData;
    dbAgendaCliente.value:=23;
    dbAgendaClienteID.value:='BB';
    dbAgendaHospital.value:=335;
    dbAgendaServico.value:='P';
    dbAgendaFechaConta.value:=1;
    dbAgendaQtdContas.value:=0;
    dbAgendaQtdContasP.value:=0;
    dbAgendaAuditor.value:=0;
    dbAgendaEnfermeiro.value:=0;
    dbAgendaAdministrativo.value:=iadm;
    dbAgendaDataInclusao.value:=date;
    dbAgendaUsuarioI.value:=iUsuario;
    dbAgenda.Post;
    frmAgenda.Atualiza;
    frmAgendaNovo.Close;

end; }

procedure TfrmAgendaNovo.tabBuscaChange(Sender: TObject);
begin

case tabBusca.TabIndex of
0:begin
    lblCliente.visible:=false;
    lblHospital.visible:=true;
    cmbClienteNovo.visible:=false;
    cmbHospitalNovo.visible:=true;
    cmbHospitalNovo.TabOrder:=1;

    dbEscalaSelecionada.MasterSource:=dsHospital;
    dbEscalaSelecionada.MasterFields:='Hospital';
    dbEscalaSelecionada.DetailFields:='EscalaPadrao.Hospital';

    grdEscalaSelecionada.Columns[0].Visible:=false;
    grdEscalaSelecionada.Columns[1].Visible:=true;

end;
1:begin
    lblCliente.visible:=true;
    lblHospital.visible:=false;
    cmbClienteNovo.visible:=true;
    cmbHospitalNovo.visible:=false;
    cmbClienteNovo.TabOrder:=1;

    dbEscalaSelecionada.MasterSource:=dsCliente;
    dbEscalaSelecionada.MasterFields:='Cliente';
    dbEscalaSelecionada.DetailFields:='EscalaPadrao.Cliente';

    grdEscalaSelecionada.Columns[0].Visible:=true;
    grdEscalaSelecionada.Columns[1].Visible:=false;
end;
end;
    dbEscalaSelecionada.Refresh;
    SelecionaDadosAgenda(sender);

end;

end.
