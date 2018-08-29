unit DatesForm;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.StdCtrls,
  FMX.Layouts, FMX.Memo, FMX.Controls.Presentation, FMX.ScrollBox;

type
  TForm1 = class(TForm)
    Memo1: TMemo;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    procedure Show (const msg: string);
  end;

var
  Form1: TForm1;

implementation

{$R *.fmx}

uses
 DateUtils, UnitDates;


// class demostrating destructors and resource management

type
  TPerson = class
  private
    FName: string;
    FBirthDate: TDate;
  public
    constructor Create (name: string);
    destructor Destroy; override;
    // some actual methods
    function Info: string;
  end;


procedure TForm1.Button1Click(Sender: TObject);
var
  ADay: TDate;
begin
  // create
  ADay := TDate.Create; // today

  // use
  ADay.Increase;

  if ADay.LeapYear then
    Show ('Leap year: ' + ADay.GetText)
  else
    Show ('Not a leap year: ' + ADay.GetText);

  // free the memory (for non ARC platforms)
  ADay.Free;
end;

procedure TForm1.Button2Click(Sender: TObject);
var
  ADay: TDate;
begin
  // create
  ADay := TDate.Create (1, 1, 2016);

  // use
  ADay.Increase;

  if ADay.LeapYear then
    Show ('Leap year: ' + ADay.GetText);

  // free the memory (for non ARC platforms)
  ADay.Free;
end;

procedure TForm1.Button3Click(Sender: TObject);
var
  Person: TPerson;
begin
  Person := TPerson.Create ('John');
  // use the class and its internal object
  Show (Person.Info);
  Person.Free;
end;

procedure TForm1.Show(const Msg: string);
begin
  Memo1.Lines.Add(Msg);
end;

{ TPerson }

constructor TPerson.Create(name: string);
begin
  FName := Name;
  FBirthDate := TDate.Create;
end;

destructor TPerson.Destroy;
begin
  FBirthDate.Free;
  inherited;
end;

function TPerson.Info: string;
begin
  Result := FName + ': ' + FBirthDate.GetText;
end;

end.
