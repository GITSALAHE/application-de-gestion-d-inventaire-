create database gestion_disponibilite;
CREATE TABLE `gestion_disponibilite`.`rayons` ( `id_rayon` INT NOT NULL , `nbr_produit` INT NOT NULL , `nbr_fornisseur` INT NOT NULL , INDEX `id_rayon` (`id_rayon`)) ENGINE = InnoDB;
ALTER TABLE `rayons` ADD PRIMARY KEY(`id_rayon`);
CREATE TABLE `gestion_disponibilite`.`fournisseur` ( `id_fournisseur` INT NOT NULL , `nom` VARCHAR(20) NOT NULL , `tel` INT NOT NULL , INDEX `id_fournisseur` (`id_fournisseur`)) ENGINE = InnoDB;
ALTER TABLE `fournisseur` ADD PRIMARY KEY(`id_fournisseur`);
CREATE TABLE `gestion_disponibilite`.`produit` ( `id_produit` INT NOT NULL , `id_rayon` INT NOT NULL , `id_fournisseur` INT NOT NULL , `nom_produit` VARCHAR(20) NOT NULL , `quantite` INT NOT NULL , PRIMARY KEY (`id_produit`), INDEX `id_rayon` (`id_rayon`), INDEX `id_fournisseur` (`id_fournisseur`)) ENGINE = InnoDB;
SELECT * FROM `produit`