-- =====================================================
-- online shop management system
-- =====================================================


-- =====================================================
-- 1. create database
-- =====================================================

create database onlineshopsys;

use onlineshopsys;


-- =====================================================
-- 2. create customers table
-- =====================================================

create table customers
(
    customer_id int primary key,
    customer_name varchar(50),
    email varchar(100),
    phone varchar(15),
    address varchar(100)
);


-- =====================================================
-- 3. create products table
-- =====================================================

create table products
(
    product_id int primary key,
    product_name varchar(100),
    category varchar(50),
    price decimal(10,2),
    stock int
);


-- =====================================================
-- 4. create orders table
-- =====================================================

create table orders
(
    order_id int primary key,
    customer_id int,
    product_id int,
    quantity int,
    order_date datetime,
    total_amount decimal(10,2),

    foreign key (customer_id) references customers(customer_id),
    foreign key (product_id) references products(product_id)
);


-- =====================================================
-- 5. create payments table
-- =====================================================

create table payments
(
    payment_id int primary key,
    order_id int,
    payment_method varchar(30),
    payment_amount decimal(10,2),
    payment_date datetime,
    payment_status varchar(20),

    foreign key (order_id) references orders(order_id)
);


-- =====================================================
-- inserting data into customers table
-- =====================================================

insert into customers
(customer_id, customer_name, email, phone, address)
values
(1, 'shweta', 'shweta@gmail.com', '9876543210', 'pune'),
(2, 'tanaya', 'tanaya@gmail.com', '9876543211', 'baner'),
(3, 'vishakha', 'vishakha@gmail.com', '9876543212', 'wakad'),
(4, 'devyani', 'devyani@gmail.com', '9876543213', 'hadapsar'),
(5, 'ishita', 'ishita@gmail.com', '9876543214', 'kothrud');


-- =====================================================
-- inserting data into products table
-- =====================================================

insert into products
(product_id, product_name, category, price, stock)
values
(101, 'wireless mouse', 'electronics', 599.00, 20),
(102, 'keyboard', 'electronics', 899.00, 15),
(103, 'headphones', 'electronics', 1499.00, 10),
(104, 'backpack', 'bags', 799.00, 25),
(105, 'water bottle', 'home', 399.00, 30),
(106, 'smart watch', 'electronics', 2499.00, 8);


-- =====================================================
-- inserting data into orders table
-- =====================================================

insert into orders
(order_id, customer_id, product_id, quantity, order_date, total_amount)
values
(1001, 1, 101, 2, '2026-09-01 10:30:00', 1198.00),
(1002, 2, 103, 1, '2026-09-01 12:15:00', 1499.00),
(1003, 3, 104, 2, '2026-09-02 14:20:00', 1598.00),
(1004, 1, 106, 1, '2026-09-03 16:45:00', 2499.00),
(1005, 4, 105, 3, '2026-09-04 11:10:00', 1197.00),
(1006, 5, 102, 1, '2026-09-05 18:30:00', 899.00);


-- =====================================================
-- inserting data into payments table
-- =====================================================

insert into payments
(payment_id, order_id, payment_method, payment_amount,
 payment_date, payment_status)
values
(501, 1001, 'upi', 1198.00, '2026-09-01 10:35:00', 'paid'),
(502, 1002, 'card', 1499.00, '2026-09-01 12:20:00', 'paid'),
(503, 1003, 'cash', 1598.00, '2026-09-02 14:25:00', 'paid'),
(504, 1004, 'upi', 2499.00, '2026-09-03 16:50:00', 'paid'),
(505, 1005, 'card', 1197.00, '2026-09-04 11:15:00', 'paid'),
(506, 1006, 'upi', 899.00, '2026-09-05 18:35:00', 'paid');


-- =====================================================
-- database and all tables with data created
-- =====================================================