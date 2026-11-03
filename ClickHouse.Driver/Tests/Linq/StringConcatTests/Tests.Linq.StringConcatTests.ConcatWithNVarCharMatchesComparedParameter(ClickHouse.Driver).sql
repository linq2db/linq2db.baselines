-- ClickHouse.Driver ClickHouse
SELECT
	p.Id
FROM
	ConcatProduct p
WHERE
	(concat(p.Sku, p.Title)) = 'A-100A-100Жук'

-- ClickHouse.Driver ClickHouse
SELECT
	t1.Id,
	t1.Sku,
	t1.Title
FROM
	ConcatProduct t1

