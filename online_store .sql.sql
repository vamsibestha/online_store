
-- Create Customers Table
CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    Name VARCHAR(100),
    Email VARCHAR(100),
    Phone VARCHAR(15),
    Address TEXT
);

-- Create Categories Table
CREATE TABLE Categories (
    CategoryID INT PRIMARY KEY,
    CategoryName VARCHAR(100)
);

-- Create Products Table
CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    Name VARCHAR(100),
    Price DECIMAL(10,2),
    Stock INT,
    CategoryID INT,
    FOREIGN KEY (CategoryID) REFERENCES Categories(CategoryID)
);

-- Create Orders Table
CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    OrderDate DATE,
    TotalAmount DECIMAL(10,2),
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);

-- Create OrderDetails Table
CREATE TABLE OrderDetails (
    OrderDetailID INT PRIMARY KEY,
    OrderID INT,
    ProductID INT,
    Quantity INT,
    Price DECIMAL(10,2),
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID),
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID)
);

-- Insert Categories
INSERT INTO Categories VALUES (1, 'Electronics');
INSERT INTO Categories VALUES (2, 'Clothing');
INSERT INTO Categories VALUES (3, 'Footwear');
INSERT INTO Categories VALUES (4, 'Home Appliances');
INSERT INTO Categories VALUES (5, 'Furniture');
INSERT INTO Categories VALUES (6, 'Books');
INSERT INTO Categories VALUES (7, 'Groceries');
INSERT INTO Categories VALUES (8, 'Beauty & Personal Care');
INSERT INTO Categories VALUES (9, 'Sports & Fitness');
INSERT INTO Categories VALUES (10, 'Toys');
INSERT INTO Categories VALUES (11, 'Stationery');
INSERT INTO Categories VALUES (12, 'Automotive');
INSERT INTO Categories VALUES (13, 'Jewelry');
INSERT INTO Categories VALUES (14, 'Mobile Accessories');
INSERT INTO Categories VALUES (15, 'Kitchenware');
INSERT INTO Categories VALUES (16, 'Gardening');
INSERT INTO Categories VALUES (17, 'Pet Supplies');
INSERT INTO Categories VALUES (18, 'Medicines & Health');
INSERT INTO Categories VALUES (19, 'Gaming');
INSERT INTO Categories VALUES (20, 'Musical Instruments');

-- Insert Customers
INSERT INTO Customers VALUES (1, 'Ravi Kumar', 'ravi.kumar@gmail.com', '9876543210', 'Hyderabad');
INSERT INTO Customers VALUES (2, 'Priya Sharma', 'priya.sharma@gmail.com', '9876501234', 'Mumbai');
INSERT INTO Customers VALUES (3, 'Amit Verma', 'amit.verma@gmail.com', '9876512345', 'Delhi');
INSERT INTO Customers VALUES (4, 'Sneha Reddy', 'sneha.reddy@gmail.com', '9876523456', 'Bangalore');
INSERT INTO Customers VALUES (5, 'Kiran Rao', 'kiran.rao@gmail.com', '9876534567', 'Chennai');
INSERT INTO Customers VALUES (6, 'Anjali Mehta', 'anjali.mehta@gmail.com', '9876545678', 'Pune');
INSERT INTO Customers VALUES (7, 'Vikram Singh', 'vikram.singh@gmail.com', '9876556789', 'Kolkata');
INSERT INTO Customers VALUES (8, 'Divya Patil', 'divya.patil@gmail.com', '9876567890', 'Ahmedabad');
INSERT INTO Customers VALUES (9, 'Rahul Das', 'rahul.das@gmail.com', '9876578901', 'Jaipur');
INSERT INTO Customers VALUES (10, 'Pooja Nair', 'pooja.nair@gmail.com', '9876589012', 'Lucknow');
INSERT INTO Customers VALUES (11, 'Arjun Yadav', 'arjun.yadav@gmail.com', '9876590123', 'Surat');
INSERT INTO Customers VALUES (12, 'Neha Joshi', 'neha.joshi@gmail.com', '9876601234', 'Bhopal');
INSERT INTO Customers VALUES (13, 'Siddharth Jain', 'siddharth.jain@gmail.com', '9876612345', 'Indore');
INSERT INTO Customers VALUES (14, 'Meena Iyer', 'meena.iyer@gmail.com', '9876623456', 'Nagpur');
INSERT INTO Customers VALUES (15, 'Rohit Shetty', 'rohit.shetty@gmail.com', '9876634567', 'Vijayawada');
INSERT INTO Customers VALUES (16, 'Tanya Paul', 'tanya.paul@gmail.com', '9876645678', 'Visakhapatnam');
INSERT INTO Customers VALUES (17, 'Ashok Menon', 'ashok.menon@gmail.com', '9876656789', 'Trivandrum');
INSERT INTO Customers VALUES (18, 'Lakshmi Rao', 'lakshmi.rao@gmail.com', '9876667890', 'Mysore');
INSERT INTO Customers VALUES (19, 'Surya Teja', 'surya.teja@gmail.com', '9876678901', 'Warangal');

-- Insert Products
INSERT INTO Products VALUES (1, 'Laptop', 50000.00, 10, 1);
INSERT INTO Products VALUES (2, 'Smartphone', 25000.00, 20, 1);
INSERT INTO Products VALUES (3, 'T-Shirt', 500.00, 100, 2);
INSERT INTO Products VALUES (4, 'Sneakers', 3000.00, 50, 3);
INSERT INTO Products VALUES (5, 'Microwave', 7000.00, 15, 4);
INSERT INTO Products VALUES (6, 'Sofa', 25000.00, 5, 5);
INSERT INTO Products VALUES (7, 'Novel Book', 400.00, 200, 6);
INSERT INTO Products VALUES (8, 'Rice Bag', 1000.00, 80, 7);
INSERT INTO Products VALUES (9, 'Shampoo', 300.00, 120, 8);
INSERT INTO Products VALUES (10, 'Tennis Racket', 1500.00, 30, 9);
INSERT INTO Products VALUES (11, 'Toy Car', 600.00, 60, 10);
INSERT INTO Products VALUES (12, 'Notebook', 50.00, 300, 11);
INSERT INTO Products VALUES (13, 'Car Wax', 450.00, 40, 12);
INSERT INTO Products VALUES (14, 'Gold Necklace', 150000.00, 2, 13);
INSERT INTO Products VALUES (15, 'Phone Case', 200.00, 250, 14);
INSERT INTO Products VALUES (16, 'Cooking Pan', 800.00, 70, 15);
INSERT INTO Products VALUES (17, 'Gardening Gloves', 250.00, 40, 16);
INSERT INTO Products VALUES (18, 'Dog Food', 1200.00, 60, 17);
INSERT INTO Products VALUES (19, 'First Aid Kit', 600.00, 35, 18);
INSERT INTO Products VALUES (20, 'Guitar', 7000.00, 10, 20);

-- Insert Orders and OrderDetails
INSERT INTO Orders VALUES (1, 1, '2025-06-01', 50500.00);
INSERT INTO Orders VALUES (2, 2, '2025-06-02', 25500.00);
INSERT INTO Orders VALUES (3, 3, '2025-06-03', 1000.00);
INSERT INTO Orders VALUES (4, 4, '2025-06-04', 7000.00);
INSERT INTO Orders VALUES (5, 5, '2025-06-05', 1500.00);
INSERT INTO Orders VALUES (6, 6, '2025-06-06', 1200.00);
INSERT INTO Orders VALUES (7, 7, '2025-06-07', 200.00);
INSERT INTO Orders VALUES (8, 8, '2025-06-08', 25000.00);
INSERT INTO Orders VALUES (9, 9, '2025-06-09', 400.00);
INSERT INTO Orders VALUES (10, 10, '2025-06-10', 600.00);
INSERT INTO Orders VALUES (11, 11, '2025-06-11', 150000.00);
INSERT INTO Orders VALUES (12, 12, '2025-06-12', 300.00);
INSERT INTO Orders VALUES (13, 13, '2025-06-13', 250.00);
INSERT INTO Orders VALUES (14, 14, '2025-06-14', 600.00);
INSERT INTO Orders VALUES (15, 15, '2025-06-15', 7000.00);
INSERT INTO Orders VALUES (16, 16, '2025-06-16', 800.00);
INSERT INTO Orders VALUES (17, 17, '2025-06-17', 600.00);
INSERT INTO Orders VALUES (18, 18, '2025-06-18', 1200.00);
INSERT INTO Orders VALUES (19, 19, '2025-06-19', 50.00);
INSERT INTO Orders VALUES (20, 1, '2025-06-20', 1000.00);

INSERT INTO OrderDetails VALUES (1, 1, 1, 1, 50000.00);
INSERT INTO OrderDetails VALUES (2, 1, 3, 1, 500.00);
INSERT INTO OrderDetails VALUES (3, 2, 2, 1, 25000.00);
INSERT INTO OrderDetails VALUES (4, 3, 8, 1, 1000.00);
INSERT INTO OrderDetails VALUES (5, 4, 5, 1, 7000.00);
INSERT INTO OrderDetails VALUES (6, 5, 10, 1, 1500.00);
INSERT INTO OrderDetails VALUES (7, 6, 18, 1, 1200.00);
INSERT INTO OrderDetails VALUES (8, 7, 15, 1, 200.00);
INSERT INTO OrderDetails VALUES (9, 8, 6, 1, 25000.00);
INSERT INTO OrderDetails VALUES (10, 9, 7, 1, 400.00);
INSERT INTO OrderDetails VALUES (11, 10, 11, 1, 600.00);
INSERT INTO OrderDetails VALUES (12, 11, 14, 1, 150000.00);
INSERT INTO OrderDetails VALUES (13, 12, 9, 1, 300.00);
INSERT INTO OrderDetails VALUES (14, 13, 17, 1, 250.00);
INSERT INTO OrderDetails VALUES (15, 14, 19, 1, 600.00);
INSERT INTO OrderDetails VALUES (16, 15, 20, 1, 7000.00);
INSERT INTO OrderDetails VALUES (17, 16, 16, 1, 800.00);
INSERT INTO OrderDetails VALUES (18, 17, 19, 1, 600.00);
INSERT INTO OrderDetails VALUES (19, 18, 18, 1, 1200.00);
INSERT INTO OrderDetails VALUES (20, 19, 12, 1, 50.00);
