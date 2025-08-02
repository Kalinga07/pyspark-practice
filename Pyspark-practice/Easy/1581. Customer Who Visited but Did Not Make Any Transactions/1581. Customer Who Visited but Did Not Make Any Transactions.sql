USE leetcode;

-- SHOW TABLES IN leetcode;

-- CREATE TABLE IF NOT EXISTS leetcode.tbl_1581_visit(
--     visit_id INT,
--     customer_id INT);

-- CREATE TABLE IF NOT EXISTS leetcode.tbl_1581_transaction(
--     transaction_id INT,
--     visit_id INT,
--     amount  INT
-- );
-- INSERT INTO leetcode.tbl_1581_visit (visit_id, customer_id) VALUES
-- (1, 23),
-- (2, 9),
-- (4, 30),
-- (5, 54),
-- (6, 96),
-- (7, 54),
-- (8, 54);

-- INSERT INTO leetcode.tbl_1581_transaction (transaction_id, visit_id, amount) VALUES
-- (2, 5, 310),
-- (3, 5, 300),
-- (9, 5, 200),
-- (12, 1, 910),
-- (13, 2, 970);

SELECT * FROM leetcode.tbl_1581_visit;
SELECT * FROM leetcode.tbl_1581_transaction;


-- Solution

SELECT customer_id, count(customer_id) AS count_no_trans FROM  leetcode.tbl_1581_visit v
LEFT JOIN leetcode.tbl_1581_transaction t ON v.visit_id = t.visit_id
WHERE t.transaction_id IS NULL
GROUP BY customer_id;