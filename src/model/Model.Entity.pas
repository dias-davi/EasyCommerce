unit Model.Entity;

interface

uses
  System.SysUtils;

type
  TEntity = class
  private
    FID: TGUID;
    procedure CreateComID(AID: TGUID);

  protected
    procedure GerarID;
    procedure SetID(const Value: TGUID);

  public
    constructor Create;

    property ID: TGUID read FID;
  end;

implementation

procedure TEntity.CreateComID(AID: TGUID);
begin
  SetId(AID);
end;

constructor TEntity.Create;
begin
  inherited;
  FID := TGUID.NewGuid;
end;

procedure TEntity.GerarID;
begin
  if CreateGUID(FID) <> 0 then
    raise Exception.Create('Erro ao gerar GUID');
end;

procedure TEntity.SetID(const Value: TGUID);
begin
  FID := Value;
end;

end.
