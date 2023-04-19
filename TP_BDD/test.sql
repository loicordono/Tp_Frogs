CREATE TABLE noms_vernaculaire(
   id_nom INT AUTO_INCREMENT,
   designation VARCHAR(100),
   PRIMARY KEY(id_nom)
);

CREATE TABLE statut_conservation_UICN(
   id_statut INT AUTO_INCREMENT,
   code INT NOT NULL,
   statut VARCHAR(50),
   icone VARCHAR(50),
   description VARCHAR(250),
   PRIMARY KEY(id_statut)
);

CREATE TABLE Famille(
   id_famille INT AUTO_INCREMENT,
   nom_famille VARCHAR(60),
   PRIMARY KEY(id_famille)
);

CREATE TABLE Utilisateur(
   id_utilisateur INT AUTO_INCREMENT,
   pseudo VARCHAR(50),
   mail VARCHAR(80),
   password VARCHAR(100),
   PRIMARY KEY(id_utilisateur),
   UNIQUE(mail)
);

CREATE TABLE Grenouille(
   id_grenouille INT AUTO_INCREMENT,
   nom_scientifique VARCHAR(50),
   taille DECIMAL(3,1),
   altitude DECIMAL(6,2),
   image VARCHAR(100),
   id_famille INT NOT NULL,
   id_statut INT NOT NULL,
   PRIMARY KEY(id_grenouille),
   FOREIGN KEY(id_famille) REFERENCES Famille(id_famille),
   FOREIGN KEY(id_statut) REFERENCES statut_conservation_UICN(id_statut)
);

CREATE TABLE Collection(
   id_collection INT AUTO_INCREMENT,
   nom_collection VARCHAR(50),
   description_collection VARCHAR(150),
   id_utilisateur INT NOT NULL,
   PRIMARY KEY(id_collection),
   FOREIGN KEY(id_utilisateur) REFERENCES Utilisateur(id_utilisateur)
);

CREATE TABLE Hybridation(
   id_hybridation INT AUTO_INCREMENT,
   id_grenouille INT NOT NULL,
   PRIMARY KEY(id_hybridation),
   UNIQUE(id_grenouille),
   FOREIGN KEY(id_grenouille) REFERENCES Grenouille(id_grenouille)
);

CREATE TABLE posseder(
   id_grenouille INT,
   id_nom INT,
   PRIMARY KEY(id_grenouille, id_nom),
   FOREIGN KEY(id_grenouille) REFERENCES Grenouille(id_grenouille),
   FOREIGN KEY(id_nom) REFERENCES noms_vernaculaire(id_nom)
);

CREATE TABLE contenir(
   id_grenouille INT,
   id_collection INT,
   PRIMARY KEY(id_grenouille, id_collection),
   FOREIGN KEY(id_grenouille) REFERENCES Grenouille(id_grenouille),
   FOREIGN KEY(id_collection) REFERENCES Collection(id_collection)
);
