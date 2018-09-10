unit Forms.Main;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.ImgList,
  System.ImageList, FMX.Objects, FMX.Layouts;

type
  TForm1 = class(TForm)
    Image1: TImage;
    ImageList1: TImageList;
    Glyph1: TGlyph;
    Text1: TText;
    Layout1: TLayout;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.fmx}

uses FMX.Platform;


procedure TForm1.FormCreate(Sender: TObject);
var
  LScreen: IFMXScreenService;
  LScreenSize: TPointF;
begin
  if TPlatformServices.Current.SupportsPlatformService(IFMXScreenService, IInterface(LScreen)) then
  begin
    LScreenSize := LScreen.GetScreenSize;

    Text1.Text :=
      'Scale: ' + LScreen.GetScreenScale.ToString(TFloatFormat.ffFixed, 15, 2) +
      ' Res.: ' + Format('%.0f x %.0f', [LScreenSize.X, LScreenSize.Y])
  end
  else
    Text1.Text := 'Scale: unknown';
end;

end.
