SELECT * INTO package_bak FROM package
INNER JOIN product
ON package.product_id = product.product_id
WHERE dea_schedule IS null

UPDATE product
SET dea_schedule = 'CVI'
WHERE product_type_name LIKE '%PRESCRIPTION%' AND dea_schedule IS NULL;

UPDATE product
SET dea_schedule = 'OTC'
WHERE product_type_name LIKE '%OTC%' AND dea_schedule IS NULL;