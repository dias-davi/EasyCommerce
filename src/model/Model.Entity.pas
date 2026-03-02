unit Model.Entity;

interface

uses
  System.SysUtils;

type
  TEntity = class

  private
    FID: TGUID;

  protected

  public
    constructor Create; overload;
    constructor Create(AID: TGUID); overload;

    property ID: TGUID read FID;
  end;

implementation

constructor TEntity.Create;
begin
  FID := TGUID.NewGuid
end;

constructor TEntity.Create(AID: TGUID);
begin
  if AID.IsEmpty then
  	FID := TGUID.NewGuid
  else
  	FID := AID;
end;


end.
