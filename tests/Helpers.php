<?php

function runQuery(int $id) {
    $file = dirname(__DIR__).'/results/queries/query-'.$id.'.sql';
    $sql = file_get_contents($file);
    return \Illuminate\Support\Facades\DB::select(\Illuminate\Support\Facades\DB::raw($sql));
}

function hasTable(string $name) {
    return \Illuminate\Support\Facades\DB::connection(\Illuminate\Support\Facades\DB::getDefaultConnection())
                                         ->getSchemaBuilder()
                                         ->HasTable($name);
}
