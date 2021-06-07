SELECT products.name, order_product.quantity, products.price
FROM products
         INNER JOIN order_product ON order_product.product_id = products.id
WHERE order_product.order_id = 1
