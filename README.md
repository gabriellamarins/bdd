## Prérequis

* PHP 7.4
* composer
* Une base de donnée MySQL

## Installation

Cloner le 

```
git clone https://github.com/le-campus-numerique/PHP_BDD_query_playground.git
```
```
cd PHP_BDD_query_playground
```
```
composer install
```
   
## initialisation de votre base de données. 

* Créez un export (Dump SQL) de votre base de donnée avec comme nom `dump.sql`
* Placez le dump de dase de données dans le répertoire `results/database/`

## configuration de votre base de données. 

Copiez le fichier exemple de configuration
```
cp .env.example .env
```
Etidez le fichier `.env` et personnalisé les paramètres de votre BDD.
* `DB_HOST` : Addresse IP du serveur MySQL 
* `DB_DATABASE` : Nom de la base de donnée 
* `DB_USERNAME` : Utilisateur de la base de donnée 
* `DB_PASSWORD` : Mot de passe de la base de donnée

## Créez les requêtes

Créer les requêtes dans le répertoire `./results/queries`

1 requête = 1 fichier


## Lancer les tests

```
./vendor/bin/pest --stop-on-error
```
