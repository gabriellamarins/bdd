## Prérequis

* PHP 7.4
* composer

## Installation

```
git clone ...
cd ...
composer install
```

## initialisation du projet 

Copier le dump de Base de données dans le répertoire `./results/database/`

```
results/database/dump.sql
```

## Créez les requêtes

Créer les requêtes dans le répertoire `./results/queries`

1 requête = 1 fichier


## Lancer les tests

```
./vendor/bin/pest --stop-on-error
```
