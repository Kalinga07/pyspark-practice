USE leetcode;

CREATE TABLE tbl_1678 (
    tweet_id INT,
    content VARCHAR(255)
);

INSERT INTO tbl_1678 (tweet_id, content)
VALUES 
(1, 'Let us Code'),
(2, 'More than fifteen chars are here!');

SELECT * FROM tbl_1678;

-- Solution

SELECT tweet_id FROM tbl_1678 WHERE LENGTH(content)>15;