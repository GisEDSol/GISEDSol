# Le projet "Carbo_elevage"

> Ce dépôt rassemble l'ensemble des scripts développés pour analyser l'évolution des teneurs en carbone organique dans les sols en lien avec l'élevage. Le dépôt rassemble les scripts associés à la création (1) d'une base de données composée de données sur les sols, le climat et l'occupation du sol et (2) les traitements statistiques associés. Il est organisé selon l'arborescence suivante :

* **[Fichiers_suivis](https://github.com/GisEDSol/Carbo_elevage/tree/master/Fichiers_suivis)** Répertoire de stockage des fichiers de suivis associés à la création de la base de données et aux traitements statistiques des données. Ce répertoire est constitué des sous-répertoires suivants :
	* [BDD](https://github.com/GisEDSol/Carbo_elevage/tree/master/Fichiers_suivis/BDD) Répertoire de stockage des fichiers de suivis liés à la création de la base de données. Le répertoire est constitué du [script](https://github.com/GisEDSol/Carbo_elevage/tree/master/Fichiers_suivis/BDD/FS_bdd_brute.Rmd) de création de la bdd brute et de plusieurs fichiers décrivant la création de données élaborées, directement exploitables pour les traitements, les analyses et la cartographie.
    * [Traitements](https://github.com/GisEDSol/Carbo_elevage/tree/master/Fichiers_suivis/Traitements) Répertoire regroupant l'ensemble des traitements de données des analyses de sol et des facteurs explicatifs potentiels.

* **[Fonctions](https://github.com/GisEDSol/Carbo_elevage/tree/master/Fonctions)** Regroupe des fonctions communes, utilisées dans plusieurs traitements. 

* **[Documentation](https://github.com/GisEDSol/Carbo_elevage/tree/master/Documentation)** Comporte l'ensemble de la documentation du projet (description de la chaîne de traitement générale, de la base de données et des principaux traitements). Ce répertoire est constitué :
	* De plusieurs [métadonnées](https://github.com/GisEDSol/Carbo_elevage/tree/master/Documentation/Metadonnees) présentées sous forme de tableaux,
	* De modes opératoires :
		* un [mode opératoire](https://rawgit.com/GisEDSol/Carbo_elevage/master/Documentation/Modes_operatoires/MO_priseenmain.html) pour prendre en main le projet (importation du projet, importation de la base de données et paramètres de connexion),
		* un [mode opératoire](https://rawgit.com/GisEDSol/Carbo_elevage/master/Documentation/Modes_operatoires/MO_bdd.html) sur la base de données (organisation des données et métadonnées).

----

### Document de travail

Pour une lecture aisée des traitements et résultats en cours sur l'analyse des teneurs en carbone organique, le lecteur intéressé peut consulter :

* **[l'analyse de l'évolution de l'occupation du sol et des OTEX](https://rawgit.com/GisEDSol/Carbo_elevage/master/Fichiers_suivis/Traitements/Suivis/FS_traitements_ra.html)**
* **[l'analyse des teneurs en carbone organique pour différentes périodes](https://rawgit.com/GisEDSol/Carbo_elevage/master/Fichiers_suivis/Traitements/Suivis/FS_traitements_bdat.html)**
* **[l'analyse de l'évolution des teneurs en carbone organique](https://rawgit.com/GisEDSol/Carbo_elevage/master/Fichiers_suivis/Traitements/Suivis/FS_traitements_bdatdiff.html)**

La synthèse des résultats en vue d'une publication est consultable :
* **[Synthèse des résultats](https://rawgit.com/GisEDSol/Carbo_elevage/master/Fichiers_suivis/Traitements/Suivis/FS_synthese.html)**

----