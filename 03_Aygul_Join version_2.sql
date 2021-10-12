--revised version; however, isnull function didn't work at all
SELECT p.product_id,
       p.product_name,
       p.model_year,
       AVG(ISNULL(oi.discount,0.00)) AS avg_discount
FROM [sales].[orders] o
    INNER JOIN [sales].[order_items] oi
        ON o.order_id = oi.order_id
    INNER JOIN [production].[products] p
        ON p.product_id = oi.product_id
        AND p.model_year = 2016
GROUP BY p.product_id,
p.product_name,
p.model_year
HAVING AVG(oi.discount) >=0 AND AVG(oi.discount) <=0.105581
ORDER BY p.product_id