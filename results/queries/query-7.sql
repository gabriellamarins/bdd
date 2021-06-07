SELECT
       SUM(order_product.quantity*products.price)
FROM orders

         LEFT JOIN order_product ON orders.id = order_product.order_id

         LEFT JOIN products ON order_product.product_id = products.id
WHERE orders.date=date(now())
