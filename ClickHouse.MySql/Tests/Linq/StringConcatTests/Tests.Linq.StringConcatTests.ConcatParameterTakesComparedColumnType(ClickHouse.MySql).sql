-- ClickHouse.MySql ClickHouse
SELECT
	p.Id
FROM
	ConcatProduct p
WHERE
	p.Title = (concat(p.Sku, 'Жук'))

-- ClickHouse.MySql ClickHouse
SELECT
	t1.Id,
	t1.Sku,
	t1.Title
FROM
	ConcatProduct t1

