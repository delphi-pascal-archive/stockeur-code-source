unit UnitMenu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls;

type
  TMenuStock = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Box1: TGroupBox;
    RBTimporter: TRadioButton;
    RBTlecture: TRadioButton;
    RBTcategorie: TRadioButton;
    BtOk: TButton;
    BtQuitter: TButton;
    procedure BtQuitterClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BtOkClick(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  MenuStock: TMenuStock;

implementation
Uses UnitImporter,UnitLecture,UnitCategorie; // Déclaration des Units ( Form ) //
{$R *.dfm}

procedure TMenuStock.BtOkClick(Sender: TObject);
begin
// Ouvre ( Importer un Code Source ) //
if RBTimporter.Checked then Importer.Show;
// Ouvre ( Lecture de la Base de Données ) //
if RBTlecture.Checked then Lecture.Show;
// Ouvre ( Catégorie Code Source ) //
if RBTCategorie.Checked then Categorie.Show;
end;

procedure TMenuStock.BtQuitterClick(Sender: TObject);
begin
Importer.ADOTable.Active := False; // Désactive la Table //
Application.Terminate; // Quitte le progremme //
end;

procedure TMenuStock.FormClose(Sender: TObject; var Action: TCloseAction);
begin
BtQuitterClick(Self); // Appel Procedure //
end;

end.
