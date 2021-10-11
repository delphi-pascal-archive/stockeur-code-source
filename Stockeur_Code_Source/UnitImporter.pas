unit UnitImporter;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, ComCtrls, DB, ADODB;

type
  TImporter = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Box1: TGroupBox;
    Box2: TGroupBox;
    Box3: TGroupBox;
    Box4: TGroupBox;
    Box5: TGroupBox;
    Box6: TGroupBox;
    Box7: TGroupBox;
    Code: TRichEdit;
    CodeNom: TEdit;
    CodeIndex: TEdit;
    CodeCat: TEdit;
    CodeList: TListBox;
    CheckCat: TCheckBox;
    BtValide: TButton;
    BtMenu: TButton;
    IndCarac: TLabel;
    DataSource: TDataSource;
    ADOConnection: TADOConnection;
    ADOTable: TADOTable;
    procedure FormActivate(Sender: TObject);
    procedure CodeListDblClick(Sender: TObject);
    procedure CodeNomChange(Sender: TObject);
    procedure CheckCatClick(Sender: TObject);
    procedure BtValideClick(Sender: TObject);
    procedure BtMenuClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  Importer: TImporter;

implementation
Uses UnitCategorie;
{$R *.dfm}
procedure TImporter.FormActivate(Sender: TObject);
begin
Code.Text := '';
CodeNom.Text := '';
Code.SetFocus; // Donne le Focus a la Zone de Code //
end;

procedure TImporter.FormShow(Sender: TObject);
begin
// Affiche les catégories du fichier Categorie.txt //
Codelist.Items.LoadFromFile('Categorie.txt');
end;

procedure TImporter.BtMenuClick(Sender: TObject);
begin
Close; // Retour au Menu Stockeur //
end;

procedure TImporter.BtValideClick(Sender: TObject);
var MsG : Integer;
begin
With AdoTable do
 begin
   Insert; // Insertion //
   Fieldbyname('Index').Value := CodeIndex.Text;
   Fieldbyname('Categorie').Value := CodeCat.Text;
   Fieldbyname('Nom').Value := CodeNom.Text;
   Fieldbyname('Code').Value := Code.Text;
   Post; // Valide //
   // MessageDlg Information //
   MsG := MessageDlg('Le code Sourcer a bien été enregistré',MtInformation,[MbOk],0);
   if MsG = MrOk then
   // Efface les Zones //
      CodeNom.Clear;
      Code.Clear;
 end;
end;

procedure TImporter.CheckCatClick(Sender: TObject);
begin
// Ouvre ( Catégorie Code Source ) //
if CheckCat.Checked then Categorie.Show;
Close; // Ferme ( Importer un Code Source ) //
end;

procedure TImporter.CodeListDblClick(Sender: TObject);
begin
// Indique le N°Index de la Catégorie qui est le N° de ligne de la liste //
CodeIndex.Text := Inttostr (CodeList.ItemIndex);
// Transfére la Selection de la liste dans CodeCat //
CodeCat.Text := (CodeList.Items[CodeList.ItemIndex]);
end;

procedure TImporter.CodeNomChange(Sender: TObject);
begin
// Limite le nombre de Caractére //
CodeNom.MaxLength := 30; // 30 Caractéres Maxi //
// Indique le nombre de Caractére //
IndCarac.Caption := '[ ' + Inttostr (Length(CodeNom.Text)) + ' /30]';
// Valeur Nul Interdit ( CodeNom + Code ) //
if (Length(CodeNom.Text) < 1) and (Length(Code.Text) < 1) then
BtValide.Enabled := False // Blogue le Bt Valider le Code Source //
else
BtValide.Enabled := True; // Blogue le Bt //
end;

end.
