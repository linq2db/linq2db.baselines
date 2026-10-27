-- ClickHouse.MySql ClickHouse
SELECT
	p.Id
FROM
	ConcatProduct p
WHERE
	(concat(p.Sku, 'Жук')) = p.Title

-- ClickHouse.MySql ClickHouse
SELECT
	t1.Id,
	t1.Sku,
	t1.Title
FROM
	ConcatProduct t1

