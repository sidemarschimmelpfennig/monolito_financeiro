unit ERP.Model.Users;

interface

uses
  System.SysUtils, System.Classes, Data.FMTBcd, Datasnap.DBClient,
  Datasnap.Provider, Data.DB, Data.SqlExpr;

type
  TModelErpUser = class(TDataModule)
    queryUsers: TSQLQuery;
    dspUsers: TDataSetProvider;
    cdsUsers: TClientDataSet;
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
