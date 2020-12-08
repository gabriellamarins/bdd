<?php

test('query-5.sql : Liste des produits (nom, quantité et prix unitaire) de la commande 1', function() {
    $orders_and_products = \Illuminate\Support\Facades\DB::table('order_product')->get();
    $products_for_order = $orders_and_products
        ->filter(function ($op) { return $op->order_id === 1; })
        ->pluck('product_id');
    $expected = \Illuminate\Support\Facades\DB::table('products')
                                              ->whereIn('id', $products_for_order)
                                              ->get();

    $result = runQuery(5);
    $this->assertCount(
        $expected->count(),
        $result,
        'la requête ne retourne pas le bon nombre de résultats'
    );
    foreach ($result as $po) {
        $this->assertObjectHasAttribute('name', $po, "Il manque le nom de l'article");
        $this->assertObjectHasAttribute('quantity', $po, "Il manque la quantitée");
        $this->assertObjectHasAttribute('price', $po, "Il manque le prix unitaire");
    }

})->skip(!file_exists(dirname(__DIR__)."/../results/queries/query-5.sql")
    , 'Il manque le fichier query-5.sql');



test('query-6.sql : Prix total de chaques commandes (calculé sur la base des prix des articles et des quantités de la commande)', function() {
    

})->skip(!file_exists(dirname(__DIR__)."/../results/queries/query-6.sql")
    , 'Il manque le fichier query-6.sql');
