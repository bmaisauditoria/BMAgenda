unit frmEscalasFecha;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, Db, DBTables, StdCtrls, Buttons, DBCtrls, ComCtrls, Spin,
  MemDS, DBAccess, MSAccess, DateUtils, Grids, DBGrids, Variants;

type
  TfrmEscalaFecha = class(TForm)
    Panel1: TPanel;
    dtpFimC: TDateTimePicker;
    lblData: TLabel;
    BitBtn1: TBitBtn;
    Panel2: TPanel;
    Label1: TLabel;
    dtpFimH: TDateTimePicker;
    lblCliente: TLabel;
    lblHospital: TLabel;
    cmdFechaH: TBitBtn;
    cmdAbreH: TBitBtn;
    procedure dtpFimCClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cmdFechaHClick(Sender: TObject);
    procedure cmdAbreHClick(Sender: TObject);
  private
    { Private declarations }
  public
     icliente,ihospital:integer;
    { Public declarations }
  end;

var
  frmEscalaFecha: TfrmEscalaFecha;
  idatafim:Tdate;
implementation

uses frmPrincipal, frmEscalas;

{$R *.DFM}

procedure TfrmEscalaFecha.dtpFimCClick(Sender: TObject);
var idatafim,idatamin:TDate;
var iresultado:integer;
var iok:boolean;
begin

    idatafim:=dtpFimC.date;
    ShowMessage('O sistema irá verificar se a data de fechamento esta ok');
    iok:=false;

with frmEscala do
begin
    pagTipo.ActivePageIndex:=0;
    dbEscalaP.First;
    while not dbEscalaP.Eof do
    begin
        if dbEscalaPDataFim.IsNull then
        begin
            dbEscalaHM.First;
            while not dbEscalaHM.eof do
            begin
                dbEscalaHMDiaria.Locate('Escala;Auditor',VarArrayof([dbEscalaHMEscala.value,dbEscalaHMAuditor.value]),[]);
                if dbEscalaHMDiariaDataFim.IsNull then
                    if dbEscalaHMDiariaDataInicio.value>idatamin then
                        idatamin:=dbEscalaHMDiariaDataInicio.value;
                dbEscalaHM.Next;
            end;
            iok:=true;
        end;
        dbEscalaP.Next;
    end;
    pagTipo.ActivePageIndex:=1;
    dbEscalaP.First;
    while not dbEscalaP.Eof do
    begin
        dbEscalaHE.First;
        if dbEscalaPDataFim.IsNull then
        begin
            while not dbEscalaHE.eof do
            begin
                dbEscalaHEDiaria.Locate('Escala;Auditor',VarArrayof([dbEscalaHEEscala.value,dbEscalaHEAuditor.value]),[]);
                if dbEscalaHEDiariaDataFim.IsNull then
                    if dbEscalaHEDiariaDataInicio.value>idatamin then
                        idatamin:=dbEscalaHEDiariaDataInicio.value;
                dbEscalaHE.Next;
            end;
            iok:=true;
        end;
        dbEscalaP.Next;
    end;
    if iok=false  then
    begin
        ShowMessage('Cliente não possui escalas ativas');
        abort;
    end;

    if idataFim<=idatamin  then
    begin
        ShowMessage('Data fechamento deve superior ao maior inicio de cobertura: '+DateToStr(idatamin));
        abort;
    end;

    iResultado:=Application.MessageBox('Confirme o fechamento de todas as escalas de Médicos e Enfermeiros de todos os Hospitais deste Cliente','Aviso', mb_yesno+ mb_iconExclamation);
    if(iResultado=id_no) then  abort;

    pagTipo.ActivePageIndex:=0;
    dbEscalaP.First;
    while not dbEscalaP.Eof do
    begin
        if dbEscalaPDataFim.IsNull then
        begin
            dbEscalaHM.First;
            while not dbEscalaHM.eof do
            begin
                if (dbEscalaHMDiaria.Locate('Escala;Auditor',VarArrayof([dbEscalaHMEscala.value,dbEscalaHMAuditor.value]),[])) and
                    (dbEscalaHMDiariaDataFim.IsNull) then
                begin
                    dbEscalaHMDiaria.Edit;
                    dbEscalaHMDiariaDataFim.value:=idatafim;
                    dbEscalaHMDiaria.Post;
                end;
                dbEscalaHM.Next;
            end;
            dbEscalaP.Edit;
            dbEscalaPDataFim.value:=idatafim;
            dbEscalaPUsuarioE.value:=iusuario;
            dbEscalaP.Post;
        end;
        dbEscalaP.Next;
    end;
    pagTipo.ActivePageIndex:=1;
    dbEscalaP.First;
    while not dbEscalaP.Eof do
    begin
        if dbEscalaPDataFim.IsNull then
        begin
            dbEscalaHE.First;
            while not dbEscalaHE.eof do
            begin
                if (dbEscalaHEDiaria.Locate('Escala;Auditor',VarArrayof([dbEscalaHEEscala.value,dbEscalaHEAuditor.value]),[])) and
                    (dbEscalaHEDiariaDataFim.IsNull) then
                begin
                    dbEscalaHEDiaria.Edit;
                    dbEscalaHEDiariaDataFim.value:=idatafim;
                    dbEscalaHEDiaria.Post;
                end;
                dbEscalaHE.Next;
            end;
            dbEscalaP.Edit;
            dbEscalaPDataFim.value:=idatafim;
            dbEscalaPUsuarioE.value:=iusuario;
            dbEscalaP.Post;
        end;
        dbEscalaP.Next;
    end;
   ShowMessage('Cliente fechado com sucesso');
   Close;
end;

end;

procedure TfrmEscalaFecha.FormCreate(Sender: TObject);
begin
    dtpFimC.date:=date;;
    dtpFimH.date:=date;
end;

procedure TfrmEscalaFecha.FormShow(Sender: TObject);
begin
with frmEscala do
begin

    icliente:=dbEscalaPCliente.Value;
    ihospital:=dbEscalaPHospital.value;
    lblCliente.Caption:=dbEscalaPClienteID.value;
    lblHospital.Caption:=dbEscalaPHospitalNome.value+'-'+dbEscalaPTipo.value+'-'+dbEscalaPServico.value;
    idatafim:=dbEscalaPDataFim.value;


    if dbEscalaPDataFim.isnull then
    begin
        cmdFechaH.Enabled:=true;
        dtpFimH.Enabled:=true;
        cmdAbreH.Enabled:=false;
    end
    else
    begin
        cmdFechaH.Enabled:=false;
        dtpFimH.Enabled:=false;
        cmdAbreH.Enabled:=true;
    end

end;
end;

procedure TfrmEscalaFecha.cmdFechaHClick(Sender: TObject);
var idatafim,idatamin:TDate;
var iresultado:integer;
begin
    idatafim:=dtpFimH.date;
    
with frmEscala do
begin
    if dbEscalaPTipo.value='M' then
    begin
        dbEscalaHM.First;
        while not dbEscalaHM.eof do
        begin
            dbEscalaHMDiaria.Locate('Escala;Auditor',VarArrayof([dbEscalaHMEscala.value,dbEscalaHMAuditor.value]),[]);
            if dbEscalaHMDiariaDataFim.IsNull then
                if dbEscalaHMDiariaDataInicio.value>idatamin then
                    idatamin:=dbEscalaHMDiariaDataInicio.value;
            dbEscalaHM.Next;
        end;
    end;
    if dbEscalaPTipo.value='E' then
    begin
        dbEscalaHE.First;
        while not dbEscalaHE.eof do
        begin
            dbEscalaHEDiaria.Locate('Escala;Auditor',VarArrayof([dbEscalaHEEscala.value,dbEscalaHEAuditor.value]),[]);
            if dbEscalaHEDiariaDataFim.IsNull then
                if dbEscalaHEDiariaDataInicio.value>idatamin then
                    idatamin:=dbEscalaHEDiariaDataInicio.value;
            dbEscalaHE.Next;
        end;
    end;

    if idataFim<=idatamin  then
    begin
        ShowMessage('Data fechamento deve superior ao maior inicio de cobertura: '+DateToStr(idatamin));
        abort;
    end;
    idatafim:=dtpFimH.date;
    iResultado:=Application.MessageBox('Confirme o fechamento de todas as escalas deste Hospital/Serviço','Aviso', mb_yesno+ mb_iconExclamation);
    if(iResultado=id_no) then  abort;

    if dbEscalaPTipo.value='M' then
    begin
        dbEscalaHM.First;
        while not dbEscalaHM.eof do
        begin
            if (dbEscalaHMDiaria.Locate('Escala;Auditor',VarArrayof([dbEscalaHMEscala.value,dbEscalaHMAuditor.value]),[])) and
               (dbEscalaHMDiariaDataFim.IsNull) then
            begin
                dbEscalaHMDiaria.Edit;
                dbEscalaHMDiariaDataFim.value:=idatafim;
                dbEscalaHMDiaria.Post;
            end;
            dbEscalaHM.Next;
        end;
    end;
    if dbEscalaPTipo.value='E' then
    begin
        dbEscalaHE.First;
        while not dbEscalaHE.eof do
        begin
            if (dbEscalaHEDiaria.Locate('Escala;Auditor',VarArrayof([dbEscalaHEEscala.value,dbEscalaHEAuditor.value]),[])) and
               (dbEscalaHEDiariaDataFim.IsNull) then
            begin
                dbEscalaHEDiaria.Edit;
                dbEscalaHEDiariaDataFim.value:=idatafim;
                dbEscalaHEDiaria.Post;
            end;
            dbEscalaHE.Next;
        end;
    end;

    dbEscalaP.Edit;
    dbEscalaPDataFim.value:=idatafim;
    dbEscalaPUsuarioE.value:=iusuario;
    dbEscalaP.Post;
    frmEscalaFecha.Close;
end;
end;

procedure TfrmEscalaFecha.cmdAbreHClick(Sender: TObject);
var iresultado:integer;
begin
    iResultado:=Application.MessageBox('Confirme a reabertura desta Hospital. As escalas não serão reabertas','Aviso', mb_yesno+ mb_iconExclamation);
    if(iResultado=id_no) then  abort;

    with frmEscala do
    begin
        dbEscalaP.Edit;
        dbEscalaPDataFim.Clear;
        dbEscalaP.Post;
    end;
    frmEscalaFecha.Close;   
end;

end.
