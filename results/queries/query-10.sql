SELECT customers.first_name, customers.last_name,
       COUNT(orders.number)
       FROM customers
 LEFT JOIN orders ON customers.id = orders.customer_id

    GROUP BY customers.first_name, customers.last_name






