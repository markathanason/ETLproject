SELECT * FROM package
INNER JOIN product
ON package.product_id = product.product_id;