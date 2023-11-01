-- Get Categories Most Have Products
SELECT categories.name, COUNT(products.category_id) as amount_products
FROM categories
INNER JOIN products ON products.category_id = categories.id
GROUP BY categories.id
ORDER BY amount_products DESC
LIMIT 1;