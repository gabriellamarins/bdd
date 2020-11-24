<?php


test('liste des produits', function() {
    $result = runQuery(1);
    $this->assertCount(2, $result);
})->skip(file_exists(dirname(__DIR__)."../results/queries/query-1.sql")
    , 'Il manque le fichier query-1.sql');


test('Liste des produits en rupture de stock (dont la quantité est “0”)', function() {
    $result = runQuery(2);
    $this->assertCount(2, $result);
})->skip(file_exists(dirname(__DIR__)."../results/queries/query-2.sql")
    , 'Il manque le fichier query-2.sql');

