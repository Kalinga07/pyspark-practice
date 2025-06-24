USE leetcode;

CREATE TABLE tbl_1068_Sales (
    sale_id INT,
    product_id INT,
    year INT,
    quantity INT,
    price INT,
    PRIMARY KEY (sale_id, year)
);

INSERT INTO tbl_1068_Sales (sale_id, product_id, year, quantity, price) VALUES
(1, 100, 2008, 10, 5000),
(2, 100, 2009, 12, 5000),
(7, 200, 2011, 15, 9000);

CREATE TABLE tbl_1068_product (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100)
);

INSERT INTO tbl_1068_product (product_id, product_name) VALUES
(100, 'Nokia'),
(200, 'Apple'),
(300, 'Samsung');

SELECT * FROM tbl_1068_product;
SELECT * FROM tbl_1068_Sales;
-- solution

SELECT  product_name,year,price FROM tbl_1068_Sales JOIN tbl_1068_product ON tbl_1068_Sales.product_id=tbl_1068_product.product_id;

