unit uPRINCIPAL;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, REST.Types,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FMX.StdCtrls, FMX.Controls.Presentation, FMX.Edit, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, REST.Response.Adapter, REST.Client,
  Data.Bind.Components, Data.Bind.ObjectScope;

type
  TForm1 = class(TForm)
    edtCNPJ: TEdit;
    spPESQUISA: TSpeedButton;
    edtRAZAO: TEdit;
    edtLOGRADOURO: TEdit;
    edtNUMERO: TEdit;
    edtCEP: TEdit;
    edtBAIRRO: TEdit;
    edtCIDADE: TEdit;
    RESTClient1: TRESTClient;
    RESTRequest1: TRESTRequest;
    RESTResponse1: TRESTResponse;
    RESTResponseDataSetAdapter1: TRESTResponseDataSetAdapter;
    FDMemTable1: TFDMemTable;
    procedure spPESQUISAClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.fmx}

procedure TForm1.spPESQUISAClick(Sender: TObject);
begin
  RESTClient1.BaseURL:= 'https://receitaws.com.br/v1/cnpj/' + edtCNPJ.Text;
  RESTRequest1.Execute;
  //
  edtRAZAO.Text:= FDMemTable1.FieldByName('nome').AsString;
  edtLOGRADOURO.Text:= FDMemTable1.FieldByName('logradouro').AsString;
  edtNUMERO.Text:= FDMemTable1.FieldByName('numero').AsString;
  edtCEP.Text:= FDMemTable1.FieldByName('cep').AsString;
  edtBAIRRO.Text:= FDMemTable1.FieldByName('bairro').AsString;
  edtCIDADE.Text:= FDMemTable1.FieldByName('municipio').AsString;
end;

end.
