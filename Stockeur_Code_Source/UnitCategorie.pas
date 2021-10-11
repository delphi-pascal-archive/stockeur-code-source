unit UnitCategorie;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls;

type
  TCategorie = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    GroupBox1: TGroupBox;
    CatList: TListBox;
    GroupBox2: TGroupBox;
    CatNom: TEdit;
    IndCarac: TLabel;
    BtValider: TButton;
    BtMenu: TButton;
    procedure CatNomChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BtValiderClick(Sender: TObject);
    procedure BtMenuClick(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  Categorie: TCategorie;

implementation

{$R *.dfm}

procedure TCategorie.BtMenuClick(Sender: TObject);
begin
Close; // Retour au Menu //
end;

procedure TCategorie.BtValiderClick(Sender: TObject);
var S : String;
begin
S := CatNom.Text;
CatList.Items.Add(S); // Insert la Catégorie //
CatList.Items.SaveToFile('Categorie.txt'); // Sauvegarde la liste //
end;

procedure TCategorie.CatNomChange(Sender: TObject);
begin
// Limite le nombre de caractére //
CatNom.MaxLength := 20; // 20 Caractéres Maxi //
// Indique le nombre de caractére //
IndCarac.Caption := '[ ' + Inttostr (Length(CatNom.Text)) + ' /20]';
end;

procedure TCategorie.FormShow(Sender: TObject);
begin
// Affiche les catégories du fichier Categorie.txt //
CatList.Items.LoadFromFile('Categorie.txt');
end;

end.
