program Stockeur;

uses
  Forms,
  UnitAuthen in 'UnitAuthen.pas' {Authen},
  UnitMenu in 'UnitMenu.pas' {MenuStock},
  UnitImporter in 'UnitImporter.pas' {Importer},
  UnitLecture in 'UnitLecture.pas' {Lecture},
  UnitCategorie in 'UnitCategorie.pas' {Categorie};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'Stockeur';
  Application.CreateForm(TAuthen, Authen);
  Application.CreateForm(TMenuStock, MenuStock);
  Application.CreateForm(TImporter, Importer);
  Application.CreateForm(TLecture, Lecture);
  Application.CreateForm(TCategorie, Categorie);
  Application.Run;
end.
