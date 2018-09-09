/*
  movrate.sql
*/
SELECT CAST(ROUND((RAND() * 5 + 0.99),2) AS DECIMAL(16,0)) AS RandNo;
DROP TABLE IF EXISTS movrate;

CREATE TABLE movrate
(
  movie varchar(100) NOT NULL,
  viewer varchar(100) NOT NULL,
  relation varchar(100) NOT NULL,
  rating int NOT NULL
);



SELECT * FROM tb;

LOAD DATA INFILE 'c:/data/movrate.csv' 
INTO TABLE tb
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
(country, year, sex, @child, @adult, @elderly)
SET
child = nullif(@child,-1),
adult = nullif(@adult,-1),
elderly = nullif(@elderly,-1)
;

SELECT * FROM tb WHERE elderly IS NULL;
SELECT COUNT(*) FROM tb;


(SELECT 'Order Number','Order Date','Status')
UNION 
(SELECT orderNumber,orderDate, status
FROM orders
INTO OUTFILE 'C:/tmp/orders.csv'
FIELDS ENCLOSED BY '"' TERMINATED BY ';' ESCAPED BY '"'
LINES TERMINATED BY '\r\n');

SELECT 
    movie, viewer, relation, rating
FROM
    orders
WHERE
    status = 'Cancelled' 
INTO OUTFILE 'C:/tmp/cancelled_orders.csv' 
FIELDS ENCLOSED BY '"' 
TERMINATED BY ';' 
ESCAPED BY '"' 
LINES TERMINATED BY '\r\n';