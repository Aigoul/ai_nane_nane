       Select p.product_id,
       p.product_name,
       p.model_year,
       AVG(ISNULL(CAST(o.discount AS decimal(22,6)), 0.000000)) AS avg_disccount
       FROM [production].[products] p
    LEFT JOIN [sales].[order_items] o
        ON p.product_id = o.product_id
             WHERE [model_year] = (2016)
GROUP BY p.product_id,
         p.product_name,
        p.model_year
HAVING AVG(ISNULL(CAST(o.discount AS decimal(22,6)), 0.000000)) >= 0
    AND AVG(ISNULL(CAST(o.discount AS decimal(22,6)), 0.000000)) <= 0.105581