SELECT orders.number, orders.date
FROM orders
WHERE orders.date BETWEEN subdate(current_date, 1) AND adddate(current_date, 1)
ORDER By number DESC;
