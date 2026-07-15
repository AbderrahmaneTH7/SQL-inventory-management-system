-- CREATE TABLE PRODUCTS !
CREATE TABLE Products(product_id VARCHAR(20) UNIQUE,
                      product_name VARCHAR(50),
                      Quantity INT,
                      Price DECIMAL(5,2),
                      Date_time DATETIME);

-- INSERT PRODUCTS !
INSERT INTO Products
VALUES ("PR01","PC",20,500.00,NOW()),
       ("PR02","Monitor",10,200.00,NOW()),
       ("PR03","Keyboard",30,100.00,NOW()),
	   ("PR04","Mouse",50,80.00,NOW());
       
SELECT * FROM Products;       

 -- Duplicate entry test !      
INSERT INTO Products
VALUES ("PR01","Phone",15,200.00,NOW()); 

-- FILTERING PRODUCTS !
SELECT * FROM Products
WHERE Quantity <= 20;

-- UPDATE PRICE !
UPDATE  Products
SET Price = 90.00
WHERE Product_name = "keyboard";

SELECT * FROM Products;

-- DELETE PRODUCT !
DELETE FROM Products
WHERE Product_name = "Mouse";

SELECT * FROM Products;

-- FALSE SET !
SET AUTOCOMMIT = 0;
UPDATE Products
SET Quantity = Quantity - 30  
WHERE Product_name = "PC";

SELECT * FROM Products;

-- SOLUTION OF FALSE SET ! 
ROLLBACK; 
UPDATE Products
SET Quantity = Quantity - 2
WHERE Product_name = "PC";

SELECT * FROM Products;

-- SAVE THE UPDATE !
COMMIT;
SET AUTOCOMMIT = 1;

SELECT * FROM Products;

-- THE END </> (^_^)



