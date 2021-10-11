  select model_year,
  avg([list_price]) as avg_price
  from [production].[products]
  where list_price >=832.99
  group by model_year
  having min([list_price]) > 850.00
