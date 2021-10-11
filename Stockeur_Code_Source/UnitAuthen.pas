unit UnitAuthen;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, ComCtrls;

type
  TAuthen = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Box1: TGroupBox;
    Box2: TGroupBox;
    Box3: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    ID: TEdit;
    PASS: TEdit;
    BtConnec: TButton;
    BtQuitter: TButton;
    ControlBD: TLabel;
    ControlFC: TLabel;
    ControlAuthen: TLabel;
    Progress: TProgressBar;
    Char: TLabel;
    EtatConnection: TLabel;
    EtatGeneral: TLabel;
    Timer: TTimer;
    procedure FormShow(Sender: TObject);
    procedure BtConnecClick(Sender: TObject);
    procedure TimerTimer(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  Authen: TAuthen;

implementation
Uses UnitMenu,UnitImporter; // Déclaration des Units ( Form ) //
{$R *.dfm}

procedure TAuthen.BtConnecClick(Sender: TObject);
begin
// Controle Authentification //
if (ID.Text = 'stockeur') and (PASS.Text = '1234') then
 begin
ControlAuthen.Caption := '[ Authentification Valide ]';
Timer.Enabled := True; // Active le Timer //
 end
 else
 ControlAuthen.Caption := '[ Authentification Invalide ]';
end;

procedure TAuthen.FormShow(Sender: TObject);
begin
// Controle l'existence de la Base de Données //
if FileExists('Base Stockeur.mdb') then // Nom du fichier a tester //
ControlBD.Caption := '[ Base Stockeur.mdb Valive ]'
else
 begin
 ControlBD.Caption := '[ Error Base Stockeur.mdb Invalide ]';
 EtatGeneral.Caption := '[ Connection Impossible ]';
 BtConnec.Enabled := False; // Blogue le Bt Connection //
 end;
// Controle l'existence du fichier Categorie //
if FileExists('Categorie.txt') then // Nom du fichier a tester //
ControlFC.Caption := '[ Fichier Categorie.txt Valide ]'
else
 begin
 ControlFC.Caption := '[ Error Fichier Categorie.txt Invalide ]';
 EtatGeneral.Caption := '[ Connection Impossible ]';
 BtConnec.Enabled := False; // Blogue le Bt Connection //
 end;
end;

procedure TAuthen.TimerTimer(Sender: TObject);
begin
// Indique le pourcentage du chargement //
Char.Caption := '[ ' + Inttostr (Progress.Position) + ' % ]';
Progress.Position := Progress.Position +1;
// Si Position = 30% Connecte la Table //
if Progress.Position = 30 then // 30% //
EtatConnection.Caption := '[ Connection Base Stockeur En Cour... ]';
Importer.ADOTable.Active := True; // Active la Table //
// Si Position = 50% Change le texte de l'EtatConnection //
if Progress.Position = 50 then // 50% //
EtatConnection.Caption := '[ Connection établie ]';
// Si Position = 80% //
if Progress.Position = 80 then // 80% //
EtatGeneral.Caption := '[ Ouverture du Menu Stockeur ]';
// Si Position = 100% //
if Progress.Position = 100 then // 100% //
 begin
 Timer.Enabled := False; // Désactive le Timer //
 MenuStock.Show; // Ouvre le Menu Stockeur //
 Hide; // Cache le form Authentification Stockeur //
 end;
end;

end.
