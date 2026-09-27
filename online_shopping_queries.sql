use onlineshopsys;

select * from customers;
+-------------+---------------+--------------------+------------+----------+
| customer_id | customer_name | email              | phone      | address  |
+-------------+---------------+--------------------+------------+----------+
|           1 | Shweta        | shweta@gmail.com   | 9876543210 | Pune     |
|           2 | Tanaya        | tanaya@gmail.com   | 9876543211 | Baner    |
|           3 | Vishakha      | vishakha@gmail.com | 9876543212 | Wakad    |
|           4 | Devyani       | devyani@gmail.com  | 9876543213 | Hadapsar |
|           5 | Ishita        | ishita@gmail.com   | 9876543214 | Kothrud  |
+-------------+---------------+--------------------+------------+----------+

 select * from orders;
+----------+-------------+------------+----------+---------------------+--------------+
| order_id | customer_id | product_id | quantity | order_date          | total_amount |
+----------+-------------+------------+----------+---------------------+--------------+
|     1001 |           1 |        101 |        2 | 2026-09-01 10:30:00 |      1198.00 |
|     1002 |           2 |        103 |        1 | 2026-09-01 12:15:00 |      1499.00 |
|     1003 |           3 |        104 |        2 | 2026-09-02 14:20:00 |      1598.00 |
|     1004 |           1 |        106 |        1 | 2026-09-03 16:45:00 |      2499.00 |
|     1005 |           4 |        105 |        3 | 2026-09-04 11:10:00 |      1197.00 |
|     1006 |           5 |        102 |        1 | 2026-09-05 18:30:00 |       899.00 |
+----------+-------------+------------+----------+---------------------+--------------+

 select * from payments;
+------------+----------+----------------+----------------+---------------------+----------------+
| payment_id | order_id | payment_method | payment_amount | payment_date        | payment_status |
+------------+----------+----------------+----------------+---------------------+----------------+
|        501 |     1001 | UPI            |        1198.00 | 2026-09-01 10:35:00 | Paid           |
|        502 |     1002 | Card           |        1499.00 | 2026-09-01 12:20:00 | Paid           |
|        503 |     1003 | Cash           |        1598.00 | 2026-09-02 14:25:00 | Paid           |
|        504 |     1004 | UPI            |        2499.00 | 2026-09-03 16:50:00 | Paid           |
|        505 |     1005 | Card           |        1197.00 | 2026-09-04 11:15:00 | Paid           |
|        506 |     1006 | UPI            |         899.00 | 2026-09-05 18:35:00 | Paid           |
+------------+----------+----------------+----------------+---------------------+----------------+

 select * from products;
+------------+----------------+-------------+---------+-------+
| product_id | product_name   | category    | price   | stock |
+------------+----------------+-------------+---------+-------+
|        101 | Wireless Mouse | Electronics |  599.00 |    20 |
|        102 | Keyboard       | Electronics |  899.00 |    15 |
|        103 | Headphones     | Electronics | 1499.00 |    10 |
|        104 | Backpack       | Bags        |  799.00 |    25 |
|        105 | Water Bottle   | Home        |  399.00 |    30 |
|        106 | Smart Watch    | Electronics | 2499.00 |     8 |
+------------+----------------+-------------+---------+-------+


__1.Retrieve all customer names who have placed an order with a total amount greater than 2,000. 

Query:
 select * from customers where customer_id =(select customer_id from orders where total_amount>2000);

Answer:
+-------------+---------------+------------------+------------+---------+
| customer_id | customer_name | email            | phone      | address |
+-------------+---------------+------------------+------------+---------+
|           1 | Shweta        | shweta@gmail.com | 9876543210 | Pune    |
+-------------+---------------+------------------+------------+---------+

__2.Display product name, category, and price of all Electronics products. 
Query:
select product_name,category,price from products where category='electronics';

Answer:
+----------------+-------------+---------+
| product_name   | category    | price   |
+----------------+-------------+---------+
| Wireless Mouse | Electronics |  599.00 |
| Keyboard       | Electronics |  899.00 |
| Headphones     | Electronics | 1499.00 |
| Smart Watch    | Electronics | 2499.00 |
+----------------+-------------+---------+

__3.Display the customers who live in Pune.
Query:
select * from customers where address = 'pune';

Answer:
+-------------+---------------+------------------+------------+---------+
| customer_id | customer_name | email            | phone      | address |
+-------------+---------------+------------------+------------+---------+
|           1 | Shweta        | shweta@gmail.com | 9876543210 | Pune    |
+-------------+---------------+------------------+------------+---------+


__5. Retrieve products whose price is greater than 1000.
Query:
select product_id, product_name, price from products where price > 1000;

Answer:
+------------+--------------+---------+
| product_id | product_name | price   |
+------------+--------------+---------+
|        103 | Headphones   | 1499.00 |
|        106 | Smart Watch  | 2499.00 |
+------------+--------------+---------+


__6. Display products having stock greater than 15.
Query:
select product_name, stock from products where stock > 15;

Answer:
+----------------+-------+
| product_name   | stock |
+----------------+-------+
| Wireless Mouse |    20 |
| Backpack       |    25 |
| Water Bottle   |    30 |
+----------------+-------+


__7. Display the products with price between 500 and 1500.
Query:
select product_name, price from products where price between 500 and 1500;

Answer:
+----------------+---------+
| product_name   | price   |
+----------------+---------+
| Wireless Mouse |  599.00 |
| Keyboard       |  899.00 |
| Headphones     | 1499.00 |
| Backpack       |  799.00 |
+----------------+---------+

__8. Display products in descending order of price.
Query:
select * from products order by price desc;

Answer:
+------------+----------------+-------------+---------+-------+
| product_id | product_name   | category    | price   | stock |
+------------+----------------+-------------+---------+-------+
|        106 | Smart Watch    | Electronics | 2499.00 |     8 |
|        103 | Headphones     | Electronics | 1499.00 |    10 |
|        102 | Keyboard       | Electronics |  899.00 |    15 |
|        104 | Backpack       | Bags        |  799.00 |    25 |
|        101 | Wireless Mouse | Electronics |  599.00 |    20 |
|        105 | Water Bottle   | Home        |  399.00 |    30 |
+------------+----------------+-------------+---------+-------+


__9. Display the top 3 most expensive products.
Query:
select * from products order by price desc limit 3;

Answer:
+------------+--------------+-------------+---------+-------+
| product_id | product_name | category    | price   | stock |
+------------+--------------+-------------+---------+-------+
|        106 | Smart Watch  | Electronics | 2499.00 |     8 |
|        103 | Headphones   | Electronics | 1499.00 |    10 |
|        102 | Keyboard     | Electronics |  899.00 |    15 |
+------------+--------------+-------------+---------+-------+

__10. Find the highest product price.
Query:
select max(price) as highest_price from products;

Answer:
+---------------+
| highest_price |
+---------------+
|       2499.00 |
+---------------+

__11. Find the lowest product price.
Query:
select min(price) as lowest_price from products;

Answer:
+--------------+
| lowest_price |
+--------------+
|       399.00 |
+--------------+


__12. Find the average price of all products.
Query:
select avg(price) as average_price from products;

Answer:
mysql> select avg(price) as average_price from products;
+---------------+
| average_price |
+---------------+
|   1115.666667 |
+---------------+

__13. Display the total number of products.
Query:
select count(*) as total_products from products;

Answer:
+----------------+
| total_products |
+----------------+
|              6 |
+----------------+

__14. Display the total stock available.
Query:
select sum(stock) as total_stock from products;

Answer:
+-------------+
| total_stock |
+-------------+
|         108 |
+-------------+

__15. Display the number of products in each category.
Query:
select category, count(*) as product_count from products group by category;

Answer:
+-------------+---------------+
| category    | product_count |
+-------------+---------------+
| Electronics |             4 |
| Bags        |             1 |
| Home        |             1 |
+-------------+---------------+


__16. Display the average price of products in each category.
Query:
select category, avg(price) as average_price from products group by category;

Answer:
+-------------+---------------+
| category    | average_price |
+-------------+---------------+
| Electronics |   1374.000000 |
| Bags        |    799.000000 |
| Home        |    399.000000 |
+-------------+---------------+

__17. Display all orders with an amount greater than 1500.
Query:
select * from orders where total_amount > 1500;

Answer:
+----------+-------------+------------+----------+---------------------+--------------+
| order_id | customer_id | product_id | quantity | order_date          | total_amount |
+----------+-------------+------------+----------+---------------------+--------------+
|     1003 |           3 |        104 |        2 | 2026-09-02 14:20:00 |      1598.00 |
|     1004 |           1 |        106 |        1 | 2026-09-03 16:45:00 |      2499.00 |
+----------+-------------+------------+----------+---------------------+--------------+


__18. Display orders made by customer 1.
Query:
select * from orders where customer_id = 1;

Answer:
+----------++-------------+------------+----------+---------------------+--------------+
| order_id | customer_id | product_id | quantity | order_date          | total_amount |
+----------+-------------+------------+----------+---------------------+--------------+
|     1001 |           1 |        101 |        2 | 2026-09-01 10:30:00 |      1198.00 |
|     1004 |           1 |        106 |        1 | 2026-09-03 16:45:00 |      2499.00 |
+----------+-------------+------------+----------+---------------------+--------------+

__19. Display the 3 orders having the highest total amount.
Query:
select * from orders order by total_amount desc limit 3;

Answer:
+----------+-------------+------------+----------+---------------------+--------------+
| order_id | customer_id | product_id | quantity | order_date          | total_amount |
+----------+-------------+------------+----------+---------------------+--------------+
|     1004 |           1 |        106 |        1 | 2026-09-03 16:45:00 |      2499.00 |
|     1003 |           3 |        104 |        2 | 2026-09-02 14:20:00 |      1598.00 |
|     1002 |           2 |        103 |        1 | 2026-09-01 12:15:00 |      1499.00 |
+----------+-------------+------------+----------+---------------------+--------------+

__20. Find the total sales amount.
Query:
select sum(total_amount) as total_sales from orders;

Answer:
+-------------+
| total_sales |
+-------------+
|     8890.00 |
+-------------+

__21. Display the customer names along with their order details.
Query:
select c.customer_name, o.order_id, o.order_date, o.total_amount from customers as c join orders as o on c.customer_id = o.customer_id;

Answer:
+---------------+----------+---------------------+--------------+
| customer_name | order_id | order_date          | total_amount |
+---------------+----------+---------------------+--------------+
| Shweta        |     1001 | 2026-09-01 10:30:00 |      1198.00 |
| Shweta        |     1004 | 2026-09-03 16:45:00 |      2499.00 |
| Tanaya        |     1002 | 2026-09-01 12:15:00 |      1499.00 |
| Vishakha      |     1003 | 2026-09-02 14:20:00 |      1598.00 |
| Devyani       |     1005 | 2026-09-04 11:10:00 |      1197.00 |
| Ishita        |     1006 | 2026-09-05 18:30:00 |       899.00 |
+---------------+----------+---------------------+--------------+

__22. Display customer name, product name and quantity ordered.
Query:
select c.customer_name, p.product_name, o.quantity from customers c join orders o on c.customer_id = o.customer_id join products p on o.product_id = p.product_id;

Answer:
+---------------+----------------+----------+
| customer_name | product_name   | quantity |
+---------------+----------------+----------+
| Shweta        | Wireless Mouse |        2 |
| Shweta        | Smart Watch    |        1 |
| Tanaya        | Headphones     |        1 |
| Vishakha      | Backpack       |        2 |
| Devyani       | Water Bottle   |        3 |
| Ishita        | Keyboard       |        1 |
+---------------+----------------+----------+

__23. Display customer name, product name and total amount of each order.
Query:
select c.customer_name, p.product_name, o.total_amount from customers c join orders o on c.customer_id = o.customer_id join products p on o.product_id = p.product_id;

Answer:
+---------------+----------------+--------------+
| customer_name | product_name   | total_amount |
+---------------+----------------+--------------+
| Shweta        | Wireless Mouse |      1198.00 |
| Shweta        | Smart Watch    |      2499.00 |
| Tanaya        | Headphones     |      1499.00 |
| Vishakha      | Backpack       |      1598.00 |
| Devyani       | Water Bottle   |      1197.00 |
| Ishita        | Keyboard       |       899.00 |
+---------------+----------------+--------------+

__24. Display all orders along with the corresponding product names.
Query:
select o.order_id, p.product_name, o.quantity, o.total_amount from orders o join products p on o.product_id = p.product_id;

Answer:
+----------+----------------+----------+--------------+
| order_id | product_name   | quantity | total_amount |
+----------+----------------+----------+--------------+
|     1001 | Wireless Mouse |        2 |      1198.00 |
|     1002 | Headphones     |        1 |      1499.00 |
|     1003 | Backpack       |        2 |      1598.00 |
|     1004 | Smart Watch    |        1 |      2499.00 |
|     1005 | Water Bottle   |        3 |      1197.00 |
|     1006 | Keyboard       |        1 |       899.00 |
+----------+----------------+----------+--------------+
__25. Display customer names and their payment details.
Query:
select c.customer_name, p.payment_method, p.payment_amount, p.payment_status from customers c join orders o on c.customer_id = o.customer_id join payments p on o.order_id = p.order_id;

Answer:
+---------------+----------------+----------------+----------------+
| customer_name | payment_method | payment_amount | payment_status |
+---------------+----------------+----------------+----------------+
| Shweta        | UPI            |        1198.00 | Paid           |
| Shweta        | UPI            |        2499.00 | Paid           |
| Tanaya        | Card           |        1499.00 | Paid           |
| Vishakha      | Cash           |        1598.00 | Paid           |
| Devyani       | Card           |        1197.00 | Paid           |
| Ishita        | UPI            |         899.00 | Paid           |
+---------------+----------------+----------------+----------------+

__26. Display the number of orders made by each customer.
Query:
select c.customer_id, c.customer_name, count(o.order_id) as number_of_orders from customers c left join orders o on c.customer_id = o.customer_id group by c.customer_id, c.customer_name;

Answer:
+-------------+---------------+------------------+
| customer_id | customer_name | number_of_orders |
+-------------+---------------+------------------+
|           1 | Shweta        |                2 |
|           2 | Tanaya        |                1 |
|           3 | Vishakha      |                1 |
|           4 | Devyani       |                1 |
|           5 | Ishita        |                1 |
+-------------+---------------+------------------+

__27. Display the total amount spent by each customer.
Query:
select c.customer_id, c.customer_name, sum(o.total_amount) as total_spent from customers c join orders o on c.customer_id = o.customer_id group by c.customer_id, c.customer_name;

Answer:
+-------------+---------------+-------------+
| customer_id | customer_name | total_spent |
+-------------+---------------+-------------+
|           1 | Shweta        |     3697.00 |
|           2 | Tanaya        |     1499.00 |
|           3 | Vishakha      |     1598.00 |
|           4 | Devyani       |     1197.00 |
|           5 | Ishita        |      899.00 |
+-------------+---------------+-------------+

__28. Display customers whose total spending is greater than 2000.
Query:
select c.customer_name, sum(o.total_amount) as total_spent from customers c join orders o on c.customer_id = o.customer_id group by c.customer_id, c.customer_name having sum(o.total_amount) > 2000;

Answer:
+---------------+-------------+
| customer_name | total_spent |
+---------------+-------------+
| Shweta        |     3697.00 |
+---------------+-------------+

__29. Display the most recent order.
Query:
select * from orders order by order_date desc limit 1;

Answer:
+----------+-------------+------------+----------+---------------------+--------------+
| order_id | customer_id | product_id | quantity | order_date          | total_amount |
+----------+-------------+------------+----------+---------------------+--------------+
|     1006 |           5 |        102 |        1 | 2026-09-05 18:30:00 |       899.00 |
+----------+-------------+------------+----------+---------------------+--------------+

__30. Display the earliest and latest order dates.
Query:
select min(order_date) as earliest_order, max(order_date) as latest_order from orders;

Answer:
+---------------------+---------------------+
| earliest_order      | latest_order        |
+---------------------+---------------------+
| 2026-09-01 10:30:00 | 2026-09-05 18:30:00 |
+---------------------+---------------------+

__31. Display the number of orders for each product.
Query:
select p.product_name, count(o.order_id) as number_of_orders from products p left join orders o on p.product_id = o.product_id group by p.product_id, p.product_name;

Answer:
+----------------+------------------+
| product_name   | number_of_orders |
+----------------+------------------+
| Wireless Mouse |                1 |
| Keyboard       |                1 |
| Headphones     |                1 |
| Backpack       |                1 |
| Water Bottle   |                1 |
| Smart Watch    |                1 |
+----------------+------------------+

__32. Display the total quantity sold for each product.
Query:
select p.product_name, sum(o.quantity) as total_quantity_sold from products p join orders o on p.product_id = o.product_id group by p.product_id, p.product_name;

Answer:
+----------------+---------------------+
| product_name   | total_quantity_sold |
+----------------+---------------------+
| Wireless Mouse |                   2 |
| Keyboard       |                   1 |
| Headphones     |                   1 |
| Backpack       |                   2 |
| Water Bottle   |                   3 |
| Smart Watch    |                   1 |
+----------------+---------------------+

__33. Display the product that has been ordered in the highest quantity.
Query:
select p.product_name, sum(o.quantity) as total_quantity from products p join orders o on p.product_id = o.product_id group by p.product_id, p.product_name order by total_quantity desc limit 1;

Answer:
+--------------+----------------+
| product_name | total_quantity |
+--------------+----------------+
| Water Bottle |              3 |
+--------------+----------------+

__34. Display all payments made using UPI.
Query:
select * from payments where payment_method = 'upi';

Answer:
+------------+----------+----------------+----------------+---------------------+----------------+
| payment_id | order_id | payment_method | payment_amount | payment_date        | payment_status |
+------------+----------+----------------+----------------+---------------------+----------------+
|        501 |     1001 | UPI            |        1198.00 | 2026-09-01 10:35:00 | Paid           |
|        504 |     1004 | UPI            |        2499.00 | 2026-09-03 16:50:00 | Paid           |
|        506 |     1006 | UPI            |         899.00 | 2026-09-05 18:35:00 | Paid           |
+------------+----------+----------------+----------------+---------------------+----------------+

__35. Display all payments made using Card.
Query:
select * from payments where payment_method = 'card';

Answer:
+------------+----------+----------------+----------------+---------------------+----------------+
| payment_id | order_id | payment_method | payment_amount | payment_date        | payment_status |
+------------+----------+----------------+----------------+---------------------+----------------+
|        502 |     1002 | Card           |        1499.00 | 2026-09-01 12:20:00 | Paid           |
|        505 |     1005 | Card           |        1197.00 | 2026-09-04 11:15:00 | Paid           |
+------------+----------+----------------+----------------+---------------------+----------------+

__36. Display the total payment amount for each payment method.
Query:
select payment_method, sum(payment_amount) as total_payment from payments group by payment_method;

Answer:
+----------------+---------------+
| payment_method | total_payment |
+----------------+---------------+
| UPI            |       4596.00 |
| Card           |       2696.00 |
| Cash           |       1598.00 |
+----------------+---------------+

__37. Display the number of payments made using each payment method.
Query:
select payment_method, count(*) as number_of_payments from payments group by payment_method;

Answer:
+----------------+--------------------+
| payment_method | number_of_payments |
+----------------+--------------------+
| UPI            |                  3 |
| Card           |                  2 |
| Cash           |                  1 |
+----------------+--------------------+

__38. Display orders along with their payment status.
Query:
select o.order_id, o.total_amount, p.payment_method, p.payment_status from orders o join payments p on o.order_id = p.order_id;

Answer:
+----------+--------------+----------------+----------------+
| order_id | total_amount | payment_method | payment_status |
+----------+--------------+----------------+----------------+
|     1001 |      1198.00 | UPI            | Paid           |
|     1002 |      1499.00 | Card           | Paid           |
|     1003 |      1598.00 | Cash           | Paid           |
|     1004 |      2499.00 | UPI            | Paid           |
|     1005 |      1197.00 | Card           | Paid           |
|     1006 |       899.00 | UPI            | Paid           |
+----------+--------------+----------------+----------------+

__39. Display customers who have placed an order for a Smart Watch.
Query:
select c.customer_name, p.product_name from customers c join orders o on c.customer_id = o.customer_id join products p on o.product_id = p.product_id where p.product_name = 'smart watch';

Answer:
+---------------+--------------+
| customer_name | product_name |
+---------------+--------------+
| Shweta        | Smart Watch  |
+---------------+--------------+

__40. Display the customer who spent the highest total amount.
Query:
select c.customer_name, sum(o.total_amount) as total_spent from customers c join orders o on c.customer_id = o.customer_id group by c.customer_id, c.customer_name order by total_spent desc limit 1;

Answer:
+---------------+-------------+
| customer_name | total_spent |
+---------------+-------------+
| Shweta        |     3697.00 |
+---------------+-------------+

__41. Display the customer who placed the maximum number of orders.
Query:
select c.customer_name, count(o.order_id) as total_orders from customers c join orders o on c.customer_id = o.customer_id group by c.customer_id, c.customer_name order by total_orders desc limit 1;

Answer:
+---------------+--------------+
| customer_name | total_orders |
+---------------+--------------+
| Shweta        |            2 |
+---------------+--------------+

__42. Display the product that generated the highest sales amount.
Query:
select p.product_name, sum(o.total_amount) as total_sales from products p join orders o on p.product_id = o.product_id group by p.product_id, p.product_name order by total_sales desc limit 1;

Answer:
+--------------+-------------+
| product_name | total_sales |
+--------------+-------------+
| Smart Watch  |     2499.00 |
+--------------+-------------+

__43. Display the customer who placed the most expensive single order.
Query:
select c.customer_name, o.order_id, o.total_amount from customers c join orders o on c.customer_id = o.customer_id order by o.total_amount desc limit 1;

Answer:
+---------------+----------+--------------+
| customer_name | order_id | total_amount |
+---------------+----------+--------------+
| Shweta        |     1004 |      2499.00 |
+---------------+----------+--------------+

__44. Display the product with the lowest stock.
Query:
select product_name, stock from products order by stock asc limit 1;

Answer:
+--------------+-------+
| product_name | stock |
+--------------+-------+
| Smart Watch  |     8 |
+--------------+-------+

__45. Display the product with the highest stock.
Query:
select product_name, stock from products order by stock desc limit 1;

Answer:
+--------------+-------+
| product_name | stock |
+--------------+-------+
| Water Bottle |    30 |
+--------------+-------+

__46. Display the customer who made the earliest order.
Query:
select c.customer_name, o.order_id, o.order_date from customers c join orders o on c.customer_id = o.customer_id order by o.order_date asc limit 1;

Answer:
+---------------+----------+---------------------+
| customer_name | order_id | order_date          |
+---------------+----------+---------------------+
| Shweta        |     1001 | 2026-09-01 10:30:00 |
+---------------+----------+---------------------+

__47. Display the customer who made the most recent order.
Query:
select c.customer_name, o.order_id, o.order_date from customers c join orders o on c.customer_id = o.customer_id order by o.order_date desc limit 1;

Answer:
+---------------+----------+---------------------+
| customer_name | order_id | order_date          |
+---------------+----------+---------------------+
| Ishita        |     1006 | 2026-09-05 18:30:00 |
+---------------+----------+---------------------+

__48. Display the payment with the highest payment amount.
Query:
select * from payments order by payment_amount desc limit 1;

Answer:
+------------+----------+----------------+----------------+---------------------+----------------+
| payment_id | order_id | payment_method | payment_amount | payment_date        | payment_status |
+------------+----------+----------------+----------------+---------------------+----------------+
|        504 |     1004 | UPI            |        2499.00 | 2026-09-03 16:50:00 | Paid           |
+------------+----------+----------------+----------------+---------------------+----------------+

__49. Display the payment method used for the highest order amount.
Query:
select o.order_id, o.total_amount, p.payment_method from orders o join payments p on o.order_id = p.order_id order by o.total_amount desc limit 1;

Answer:
+----------+--------------+----------------+
| order_id | total_amount | payment_method |
+----------+--------------+----------------+
|     1004 |      2499.00 | UPI            |
+----------+--------------+----------------+

__50. Display the customer who purchased the highest quantity of products.
Query:
select c.customer_name, sum(o.quantity) as total_quantity from customers c join orders o on c.customer_id = o.customer_id group by c.customer_id, c.customer_name order by total_quantity desc limit 1;

Answer:
+---------------+----------------+
| customer_name | total_quantity |
+---------------+----------------+
| Shweta        |              3 |
+---------------+----------------+
