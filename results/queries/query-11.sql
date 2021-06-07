SELECT customers.first_name, customers.last_name,
       SUM(order_product.quantity*products.price) AS total_order
             FROM customers
                LEFT JOIN orders ON customers.id = orders.customer_id
            LEFT JOIN order_product ON orders.id = order_product.order_id
            LEFT JOIN products ON order_product.product_id = products.id
GROUP BY customers.first_name, customers.last_name

