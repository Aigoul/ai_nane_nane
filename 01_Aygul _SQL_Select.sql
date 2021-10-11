SELECT [product_id],
      [product_name],
      [list_price],
      [category_id]
FROM [production].[products]
where (product_name like '%Girl%' OR product_name like 'sun%')
and [category_id] IN ( 3, 6 )
and [list_price] <1000