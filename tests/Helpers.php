<?php

function runQuery(int $id)
{
    $file = dirname(__DIR__).'/results/queries/query-'.$id.'.sql';
    $sql = file_get_contents($file);
    return \Illuminate\Support\Facades\DB::select(\Illuminate\Support\Facades\DB::raw($sql));
}

function hasTable(string $name) : bool
{
    return \Illuminate\Support\Facades\DB::connection(\Illuminate\Support\Facades\DB::getDefaultConnection())
                                         ->getSchemaBuilder()
                                         ->HasTable($name);
}
function tableHasColumn(string $table, string $name) : bool
{
    $columns = \Illuminate\Support\Facades\DB::connection(\Illuminate\Support\Facades\DB::getDefaultConnection())
                                         ->getSchemaBuilder()
                                         ->getColumnListing($table);
    return in_array($name, $columns);
}

function getOrdersCollection() : \Illuminate\Support\Collection
{
    $orders = \Illuminate\Support\Facades\DB::table('orders')->get();
    $products = \Illuminate\Support\Facades\DB::table('products')->get();

    $orders_and_products = \Illuminate\Support\Facades\DB::table('order_product')->get();
    return $orders_and_products->groupBy('order_id')->map(function ($order_and_product) use ($orders, $products) {
        $order = $orders->first(function ($order) use ($order_and_product) { return $order->id == $order_and_product[0]->order_id; });
        // dd($order, $order_and_product);
        $total = $order_and_product->reduce(function ($carry, $item) use ($products, $order_and_product) {
            $product = $products->first(function ($product) use ($item, $order_and_product) { return $product->id == $item->product_id; });
            return $carry + ( $product->price * $item->quantity );
        }, 0);

        return [
            'number' => $order->number,
            'date' => $order->date,
            'total' => $total,
        ];
    });

}
