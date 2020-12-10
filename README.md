## Prérequis

* PHP 7.4
* composer
* Une base de donnée MySQL

## Installation

Cloner le répository sur votre ordinateur
```
git clone https://github.com/le-campus-numerique/PHP_BDD_query_playground.git
```

Se placer dans le répertoire du projet
```
cd PHP_BDD_query_playground
```

Installer les dépendances du projet
```
composer install
```
   
## initialisation de votre base de données. 

* Créer un export (Dump SQL) de votre base de donnée avec comme nom `dump.sql`
* Placer le dump de dase de données dans le répertoire `results/database/`

## configuration de votre base de données. 

⚠️☠️⚠️ Créer une nouvelle base de données dédiée au projet ⚠️☠️⚠️

⚠️☠️⚠️ L'ensemble des tables et données sont supprimés à chaque éxécution du programme ⚠️☠️⚠️   

Copier le fichier exemple de configuration
```
cp .env.example .env
```
Editer le fichier `.env` et personnaliser les paramètres de votre BDD.
* `DB_HOST` : Addresse IP du serveur MySQL 
* `DB_DATABASE` : Nom de la base de donnée 
* `DB_USERNAME` : Utilisateur de la base de donnée 
* `DB_PASSWORD` : Mot de passe de la base de donnée

## Lancer les tests

Avec rechargement automatique :
```
./vendor/bin/php-watcher "./vendor/bin/pest --stop-on-error"  
```
Ou lancement manuel :
```
./vendor/bin/pest --stop-on-error
```

## Créez les requêtes

Créer les requêtes conformément aux consignes dans le répertoire `./results/queries`

1 requête = 1 fichier
