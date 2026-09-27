# Online Shop Management System Database
The Online Shop Management System Database is designed to efficiently manage customers, products, orders, and payments in an online shopping environment. It demonstrates essential database functionalities such as customer management, product catalog management, order processing, and payment tracking using MySQL. This project provides a foundational understanding of how online shopping systems store, organize, and retrieve information through a relational database model.

---

## Project Overview

The Online Shop Management System comprises four interrelated tables — **customers, products, orders**, and **payments**. These tables collectively simulate the main operations of an online shopping system including customer registration, product management, order placement, and payment processing.

The design emphasizes referential integrity, relationships between tables, and data organization, making it suitable for learning and small-scale online shop database management.

---

## Key Objectives

### 1. Customer Management

Store and maintain customer information such as customer ID, name, email, phone number, and address.

### 2. Product Management

Maintain product details including product ID, product name, category, price, and available stock.

### 3. Order Management

Record customer orders along with the ordered product, quantity, order date, and total amount.

### 4. Payment Management

Track payment information associated with each order, including payment method, payment amount, payment date, and payment status.

### 5. Data Query & Reporting

Use SQL queries to analyze customer orders, product sales, payment information, total spending, and stock details.

---

## Tools & Technologies Used

**MySQL** – Database Management System

**SQL**– Query Language for data handling

---

## Database Design


### **1. Customers Table**
| Column        | Type			| Description								|
|---------------|---------------|-------------------------------------------|
|customer_id	| INT			| Primary Key – Unique customer identifier  |
|customer_name	| VARCHAR(50)	| Customer name								|
|email		    | VARCHAR(100)	| Customer email address					|
|phone		    | VARCHAR(15)	| Customer contact number					|
|address	    | VARCHAR(100)	| Customer residential address				|



### **2. Products Table**
| Column		| Type			| Description								|
|---------------|---------------|-------------------------------------------|
|product_id		| INT			| Primary Key – Unique product identifier	|
|product_name	| VARCHAR(100)	| Name of the product						|
|category		| VARCHAR(50)	| Product category							|	
|price			| DECIMAL(10,2)	| Price of the product						|
|stock			| INT			| Available quantity in stock				|



### **3. Orders Table**
|Column			| Type			| Description									 |
|---------------|---------------|------------------------------------------------|
|order_id		| INT			| Primary Key – Unique order identifier			 |
|customer_id	| INT			| Foreign Key references customers(customer_id)  |
|product_id		| INT			| Foreign Key references products(product_id)	 |
|quantity		| INT			| Quantity of product ordered					 |
|order_date		| DATETIME		| Date and time of the order					 |
|total_amount	| DECIMAL(10,2)	| Total amount of the order						 |



### **4. Payments Table**
|Column			| Type			| Description								|
|---------------|---------------|-------------------------------------------|
|payment_id		| INT			| Primary Key – Unique payment identifier	|
|order_id		| INT			| Foreign Key references orders(order_id)	|
|payment_method	| VARCHAR(30)	| Payment method such as UPI, Card, or Cash	|
|payment_amount	| DECIMAL(10,2)	| Amount paid for the order					|
|payment_date	| DATETIME		| Date and time of payment					|
|payment_status	| VARCHAR(20)	| Status of payment such as Paid or Pending	|


---

## ER Diagram

<img src="images/library_er_diagram.png" alt="er_diagram" width="500"/>  

---

## Project Results
[Click here to get full code](https://github.com/gaikwadshweta263-commits/Online-Shopping-System/tree/c2d15ce09236d96d39bc514e3f7541b637dd59b1/database)

---

## SQL Query Tasks



## Working of the System
- Customers register their details in the customers table. 
- Products available for purchase are stored in the products table. 
- Customers place orders, which are recorded in the orders table. 
- Each order contains the customer, product, quantity, order date, and total amount. 
- Payments made for orders are recorded in the payments table. 
- SQL queries are used to generate reports and analyze shopping data. 

---

## Advantages
- Organized relational structure for efficient data management. 
- Maintains relationships between customers, products, orders, and payments. 
- Demonstrates understanding of primary keys and foreign keys. 
- Makes it easy to retrieve and analyze shopping information. 
- Suitable for students learning SQL through a real-world e-commerce model. 

---

## Limitations
- Product stock is not automatically updated after an order. 
- The system does not include an automatic refund management feature. 
- No delivery or shipment tracking is included. 
- No GUI interface is provided; the database is operated using SQL commands. 

--- 

## Future Scope
- Add automatic stock updates using triggers. 
- Add a delivery and shipment tracking table. 
- Implement refund and cancellation management. 
- Add customer login and authentication. 
- Introduce stored procedures for order and payment operations. 
- Build a web or GUI-based online shopping application. 

---

## Conclusion
The Online Shop Management System Database is a relational SQL project that demonstrates important database concepts through a real-world online shopping model. It efficiently manages customers, products, orders, and payments while demonstrating the use of relationships, foreign keys, joins, aggregate functions, and SQL queries for data analysis.
The project provides a strong foundation for understanding how databases can be used to manage and analyze the operations of an online shopping system.

