-- Question 1 Achieving 1NF (First Normal Form)

/* To conver the table into 1NF, we break the productDetail 
into two like below: 
- Creating a products table with a primary key and
- Creating an order table primary key and a foreign key referencing the 
  the product table
*/

CREATE TABLE products(
	productId INT PRIMARY KEY AUTO_INCREMENT,
    product VARCHAR(150)
);

-- Creating an order table
CREATE TABLE orders (
	orderId INT PRIMARY KEY AUTO_INCREMENT,
    customerName VARCHAR(100),
    productId INT,
    FOREIGN KEY (productId) REFERENCES products(productId)
);

-- ************************************************************

-- Question 2 Achieving 2NF (Second Normal Form)

/* the 2NF can be achevied by creating the following tables */

-- Creating products table
CREATE TABLE products (
    productId INT PRIMARY KEY AUTO_INCREMENT,
    productName VARCHAR(100),
    quantity INT
);

-- Creating orders table
CREATE TABLE orders (
    orderId INT PRIMARY KEY AUTO_INCREMENT,
    productId INT,
    FOREIGN KEY (productId) REFERENCES products(productId)
);

-- Creating customers table
CREATE TABLE customers (
    id INT PRIMARY KEY AUTO_INCREMENT,
    custName VARCHAR(100),
    orderId INT,
    FOREIGN KEY (orderId) REFERENCES orders(orderId)
);

