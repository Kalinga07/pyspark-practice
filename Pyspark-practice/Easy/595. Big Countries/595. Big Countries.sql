USE leetcode;

CREATE TABLE tbl_595 (
    name VARCHAR(100),
    continent VARCHAR(50),
    area BIGINT,
    population BIGINT,
    gdp BIGINT
);

INSERT INTO tbl_595 (name, continent, area, population, gdp) 
VALUES ('Afghanistan', 'Asia', 652230, 25500100, 20343000000);

INSERT INTO tbl_595 (name, continent, area, population, gdp) 
VALUES ('Albania', 'Europe', 28748, 2831741, 12960000000);

INSERT INTO tbl_595 (name, continent, area, population, gdp) 
VALUES ('Algeria', 'Africa', 2381741, 37100000, 188681000000);

INSERT INTO tbl_595 (name, continent, area, population, gdp) 
VALUES ('Andorra', 'Europe', 468, 78115, 3712000000);

INSERT INTO tbl_595 (name, continent, area, population, gdp) 
VALUES ('Angola', 'Africa', 1246700, 20609294, 100990000000);

SELECT * FROM tbl_595;

-- Solutions

SELECT * FROM tbl_595 WHERE area>=3000000 OR population>=25000000;