unit Forms.Main;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Ani,
  FMX.Effects, FMX.Filter.Effects, FMX.Objects, FMX.ListBox, FMX.Layouts;

type
  TForm1 = class(TForm)
    Image1: TImage;
    MagnifyTransitionEffect1: TMagnifyTransitionEffect;
    FloatAnimation1: TFloatAnimation;
    Rectangle1: TRectangle;
    SwipeTransitionEffect1: TSwipeTransitionEffect;
    FloatAnimation2: TFloatAnimation;
    WaveTransitionEffect1: TWaveTransitionEffect;
    Image2: TImage;
    WaterTransitionEffect1: TWaterTransitionEffect;
    FloatAnimation3: TFloatAnimation;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.fmx}

end.
