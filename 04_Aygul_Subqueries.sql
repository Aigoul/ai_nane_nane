--missing min/max discount condition, but the result still match

SELECT p.product_id,
     p.product_name,
     oi.list_price,
     o.order_date,
     oi.discount
FROM [sales].[orders] o
    INNER JOIN [sales].[order_items] oi
        ON o.order_id = oi.order_id
    INNER JOIN [production].[products] p
        ON p.product_id = oi.product_id
WHERE p.list_price > 7000
ORDER BY p.product_name