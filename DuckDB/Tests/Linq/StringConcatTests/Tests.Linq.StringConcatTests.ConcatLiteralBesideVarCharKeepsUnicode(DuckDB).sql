-- DuckDB
SELECT
	p.Id,
	'Артикул ' || p.Sku
FROM
	ConcatProduct p

-- DuckDB
SELECT
	t1.Id,
	t1.Sku,
	t1.Title
FROM
	ConcatProduct t1

