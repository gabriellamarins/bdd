SELECT orders.number,
    SUM(order_product.quantity*products.price) AS total_order
FROM orders

         LEFT JOIN order_product ON orders.id = order_product.order_id

         LEFT JOIN products ON order_product.product_id = products.id
GROUP BY orders.number
HAVING total_order BETWEEN 100 AND 550
