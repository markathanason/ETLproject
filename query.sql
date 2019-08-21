SELECT * FROM package
INNER JOIN product
ON package."PRODUCTID" = product."PRODUCTID";