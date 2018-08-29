unit UnitDates;

interface

type
  TDate = class
  private
    FDate: TDateTime;
  public
    constructor Create; overload;
    constructor Create (Month, Day, Year: Integer); overload;
    procedure SetValue (Month, Day, Year: Integer); overload;
    procedure SetValue (NewDate: TDateTime); overload;
    function LeapYear: Boolean;
    function GetText: string;
    procedure Increase;
  end;

implementation

uses
 DateUtils, System.SysUtils;

constructor TDate.Create;
begin
  FDate := Today;
end;

constructor TDate.Create (Month, Day, Year: Integer);
begin
  FDate := EncodeDate (Year, Month, Day);
end;

procedure TDate.SetValue (Month, Day, Year: Integer);
begin
  FDate := EncodeDate (Year, Month, Day);
end;

function TDate.GetText: string;
begin
  Result := DateToStr (FDate);
end;

procedure TDate.Increase;
begin
  FDate := FDate + 1;
end;

function TDate.LeapYear: Boolean;
begin
  // call IsLeapYear in SysUtils and YearOf in DateUtils
  Result := IsLeapYear (YearOf (FDate));
end;

procedure TDate.SetValue(NewDate: TDateTime);
begin
  FDate := NewDate;
end;


end.
