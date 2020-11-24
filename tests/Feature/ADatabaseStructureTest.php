<?php



test('Présence de la table Articles', function() {
    expect(hasTable('articles'))->toBeTrue();
})->skip(file_exists(dirname(__DIR__)."../results/database/dump.sql"), 'database dump not available');
