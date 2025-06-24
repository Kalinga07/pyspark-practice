use leetcode;

CREATE TABLE tbl_584 (
    id INT PRIMARY KEY,
    name VARCHAR(100),
    referee_id INT
);

INSERT INTO tbl_584 (id, name, referee_id) VALUES (1, 'Will', NULL);
INSERT INTO tbl_584 (id, name, referee_id) VALUES (2, 'Jane', NULL);
INSERT INTO tbl_584 (id, name, referee_id) VALUES (3, 'Alex', 2);
INSERT INTO tbl_584 (id, name, referee_id) VALUES (4, 'Bill', NULL);
INSERT INTO tbl_584 (id, name, referee_id) VALUES (5, 'Zack', 1);
INSERT INTO tbl_584 (id, name, referee_id) VALUES (6, 'Mark', 2);

SELECT * FROM tbl_584;

-- Solution

SELECT name FROM tbl_584 WHERE referee_id!=2 OR referee_id is Null;

