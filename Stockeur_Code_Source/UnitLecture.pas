unit UnitLecture;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Grids, DBGrids, ComCtrls, DBCtrls;

type
  TLecture = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Box1: TGroupBox;
    Box2: TGroupBox;
    Box3: TGroupBox;
    BDCode: TDBRichEdit;
    ListCodeSource: TDBGrid;
    DBNavigator: TDBNavigator;
    CheckActive: TCheckBox;
    RBTrecherNom: TRadioButton;
    RBTrecherCat: TRadioButton;
    EditRechercher: TEdit;
    BtRecher: TButton;
    procedure CheckActiveClick(Sender: TObject);
    procedure BtRecherClick(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  Lecture: TLecture;

implementation
Uses UnitImporter;
{$R *.dfm}

procedure TLecture.BtRecherClick(Sender: TObject);
var MsG : Integer;
begin
// Rechercher par Nom //
if RBTrecherNom.Checked then
if not Importer.ADOTable.Locate('Nom',EditRechercher.Text,[]) then
// MessageDlg Information //
MsG := MessageDlg('Aucun élément ne correspond à votre recherche',MtInformation,[MbOk],0);
if RBTrecherCat.Checked then
if not Importer.ADOTable.Locate('Categorie',EditRechercher.Text,[]) then
// MessageDlg Information //
MsG := MessageDlg('Aucun élément ne correspond à votre recherche',MtInformation,[MbOk],0);
end;

procedure TLecture.CheckActiveClick(Sender: TObject);
begin
// Débloquer le Zone de Code //
if CheckActive.Checked then BDCode.Enabled := True
else
BDCode.Enabled := False;
end;

end.
