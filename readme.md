Company Name : Senstron 
Name         : Vamsi Bestha
Intern Id    : ST4WFE88
Duration     : 08 weeks
Mentor       : Neela Santhosh
# 🛒 Online Shopping Database

This project contains a detailed MySQL database schema and sample data for a simplified online shopping system. The goal is to demonstrate core database concepts such as normalization, relationships, and data integrity using a practical e-commerce use case.

---

## 📊 Database Schema Overview

The database is composed of 5 main tables that represent core entities in an online shopping system:

### 1. 🧑 Customers

Stores information about customers who place orders.

| Column Name | Data Type | Description |
|-------------|-----------|-------------|
| CustomerID  | INT       | Unique ID for each customer (Primary Key) |
| Name        | VARCHAR   | Full name of the customer |
| Email       | VARCHAR   | Contact email address |
| Phone       | VARCHAR   | Mobile number |
| Address     | TEXT      | Customer's address |
![customers](https://github.com/user-attachments/assets/d79dd745-4f58-4bbb-843c-c2b6e94d0c21)


### 2. 🗂️ Categories

Defines product categories for classification and filtering.

| Column Name   | Data Type | Description |
|---------------|-----------|-------------|
| CategoryID    | INT       | Unique ID for each category (Primary Key) |
| CategoryName  | VARCHAR   | Name of the category (e.g., Electronics, Books) |

### 3. 📦 Products

Contains all product-related information.

| Column Name | Data Type | Description |
|-------------|-----------|-------------|
| ProductID   | INT       | Unique ID for each product (Primary Key) |
| Name        | VARCHAR   | Product name |
| Price       | DECIMAL   | Price of the product |
| Stock       | INT       | Quantity available in inventory |
| CategoryID  | INT       | Foreign Key referencing Categories(CategoryID) |

### 4. 🧾 Orders

Records each transaction made by customers.

| Column Name | Data Type | Description |
|-------------|-----------|-------------|
| OrderID     | INT       | Unique ID for each order (Primary Key) |
| CustomerID  | INT       | Foreign Key referencing Customers(CustomerID) |
| OrderDate   | DATE      | Date when the order was placed |
| TotalAmount | DECIMAL   | Total value of the order |

### 5. 📑 OrderDetails

Captures line items in each order (i.e., which products were purchased and in what quantity).

| Column Name   | Data Type | Description |
|---------------|-----------|-------------|
| OrderDetailID | INT       | Unique ID for each line item (Primary Key) |
| OrderID       | INT       | Foreign Key referencing Orders(OrderID) |
| ProductID     | INT       | Foreign Key referencing Products(ProductID) |
| Quantity      | INT       | Number of units purchased |
| Price         | DECIMAL   | Price of the product at time of purchase |

---

## 🔗 Relationships

- **Customers ➡ Orders**: One-to-Many (a customer can place multiple orders)
- **Orders ➡ OrderDetails**: One-to-Many (an order can have multiple products)
- **Products ➡ OrderDetails**: One-to-Many (a product can appear in many orders)
- **Categories ➡ Products**: One-to-Many (a category can include multiple products)

---

## 🧪 Sample Data

Includes seed data such as:

- ✅ 19 Customers across major Indian cities
- 🗃️ 20 Product Categories
- 📋 20 Products (e.g., Laptop, T-Shirt, Shampoo)
- 🧾 20 Orders with detailed breakdowns

---

## 💾 How to Use

1. Install MySQL and MySQL Workbench.
2. Create a new database (e.g., `online_shopping`).
3. Copy the contents of the SQL script and execute it in the SQL editor.
4. Verify that all tables and data are created properly using SELECT queries.

---

## 📚 Educational Use Cases

This database is perfect for:

- Practicing **SQL queries** (JOINs, GROUP BY, etc.)
- Understanding **database normalization**
- Exploring **foreign key relationships**
- Simulating **E-commerce workflows**


