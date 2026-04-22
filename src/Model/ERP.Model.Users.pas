unit ERP.Model.Users;

interface

uses
  System.SysUtils, System.Classes, Data.FMTBcd, Datasnap.DBClient,
  Datasnap.Provider, Data.DB, Data.SqlExpr, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TModelErpUser = class(TDataModule)
    dspUsers: TDataSetProvider;
    cdsUsers: TClientDataSet;
    queryUsers: TFDQuery;
  private
    { Private declarations }

  public
    { Public declarations }
  end;

var
  ModelErpUser: TModelErpUser;



implementation
uses
    ERP.Model.Connection;

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}




end.
