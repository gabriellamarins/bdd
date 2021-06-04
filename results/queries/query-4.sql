SELECT orders.number, orders.date
FROM orders
WHERE orders.date > subdate(current_date, 10);

