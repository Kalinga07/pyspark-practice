USE leetcode;

CREATE TABLE tbl_1378_Employees (
    id INT PRIMARY KEY,
    name VARCHAR(100)
);

INSERT INTO tbl_1378_Employees (id, name) VALUES
(1, 'Alice'),
(7, 'Bob'),
(11, 'Meir'),
(90, 'Winston'),
(3, 'Jonathan');

CREATE TABLE tbl_1378_EmployeeUNI (
    id INT,
    unique_id INT,
    PRIMARY KEY (id, unique_id)
);

INSERT INTO tbl_1378_EmployeeUNI (id, unique_id) VALUES
(3, 1),
(11, 2),
(90, 3);

SELECT * FROM tbl_1378_Employees;
SELECT * FROM tbl_1378_EmployeeUNI;

-- Solution

SELECT unique_id AS id, name  FROM tbl_1378_Employees LEFT JOIN tbl_1378_EmployeeUNI ON tbl_1378_Employees.id=tbl_1378_EmployeeUNI.id;