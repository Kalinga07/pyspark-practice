USE leetcode;

CREATE TABLE tbl_1148 (
    article_id INT,
    author_id INT,
    viewer_id INT,
    view_date DATE
);

INSERT INTO tbl_1148 (article_id, author_id, viewer_id, view_date) VALUES (1, 3, 5, '2019-08-01');
INSERT INTO tbl_1148 (article_id, author_id, viewer_id, view_date) VALUES (1, 3, 6, '2019-08-02');
INSERT INTO tbl_1148 (article_id, author_id, viewer_id, view_date) VALUES (2, 7, 7, '2019-08-01');
INSERT INTO tbl_1148 (article_id, author_id, viewer_id, view_date) VALUES (2, 7, 6, '2019-08-02');
INSERT INTO tbl_1148 (article_id, author_id, viewer_id, view_date) VALUES (4, 7, 1, '2019-07-22');
INSERT INTO tbl_1148 (article_id, author_id, viewer_id, view_date) VALUES (3, 4, 4, '2019-07-21');
INSERT INTO tbl_1148 (article_id, author_id, viewer_id, view_date) VALUES (3, 4, 4, '2019-07-21');

SELECT * FROM tbl_1148;

-- Solution

SELECT DISTINCT author_id AS id FROM tbl_1148 WHERE author_id=viewer_id ORDER BY author_id;