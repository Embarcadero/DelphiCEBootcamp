unit Forms.Main;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Objects,
  FMX.Ani, FMX.Controls.Presentation, FMX.StdCtrls;

type
  TForm1 = class(TForm)
    FloatAnimation1: TFloatAnimation;
    Text1: TText;
    Rectangle1: TRectangle;
    FloatAnimation2: TFloatAnimation;
    ColorAnimation1: TColorAnimation;
    Rectangle2: TRectangle;
    Rectangle3: TRectangle;
    RectAnimation1: TRectAnimation;
    PathAnimation1: TPathAnimation;
    Circle1: TCircle;
    PathAnimation2: TPathAnimation;
    Button1: TButton;
    Rectangle4: TRectangle;
    procedure Button1Click(Sender: TObject);
  private
    FMyValue: Double;
    procedure SetMyValue(const Value: Double);
    { Private declarations }
  public
    { Public declarations }

    property MyValue: Double read FMyValue write SetMyValue;
  end;

var
  Form1: TForm1;

implementation

{$R *.fmx}

{ TForm1 }

procedure TForm1.Button1Click(Sender: TObject);
begin
  TAnimator.AnimateFloat(Rectangle4, 'Width', 200, 1, TAnimationType.Out, TInterpolationType.Quadratic);
end;

procedure TForm1.SetMyValue(const Value: Double);
begin
  FMyValue := Value;
  Text1.Text := Format('%.6f', [FMyValue]);
  Rectangle1.Width := FMyValue;
end;

end.
