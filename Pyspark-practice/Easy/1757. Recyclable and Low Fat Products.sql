Create database if not exists leetcode;

USE leetcode;
drop table if exists tbl_1757;
create table IF NOT EXISTS tbl_1757 (
    product_id int,
    recyclable char(3),
    low_fats char(3)
)


select * from tbl_1757;
INSERT INTO tbl_1757 (product_id, low_fats, recyclable) VALUES
(0, 'Y', 'N'),
(1, 'Y', 'Y'),
(2, 'N', 'Y'),
(3, 'Y', 'Y'),
(4, 'N', 'N');

select * from tbl_1757;

-- Leetcode solutions

SELECT product_id FROM tbl_1757 WHERE recyclable='Y' and low_fats='Y';