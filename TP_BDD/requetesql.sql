SELECT *,enregistrement_vernaculaire. FROM `grenouille` 
JOIN enregistrement_vernaculaire 
ON grenouille.id_grenouille=enregistrement_vernaculaire.id_grenouille
JOIN noms_vernaculaire 
ON noms_vernaculaire.id_nom=enregistrement_vernaculaire.id_nom;