-- ClickHouse.MySql ClickHouse
SELECT
	p.Id
FROM
	ConcatProduct p
WHERE
	(concat(p.Sku, 'Жук')) IN ('A-100Щит', 'B-200Жук')

-- ClickHouse.MySql ClickHouse
SELECT
	t1.Id,
	t1.Sku,
	t1.Title
FROM
	ConcatProduct t1

