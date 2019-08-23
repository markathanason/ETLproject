SELECT * FROM package
INNER JOIN product
ON package.product_id = product.product_id;

UPDATE product
SET dea_schedule = 'CVI'
WHERE dea_schedule IS NULL;