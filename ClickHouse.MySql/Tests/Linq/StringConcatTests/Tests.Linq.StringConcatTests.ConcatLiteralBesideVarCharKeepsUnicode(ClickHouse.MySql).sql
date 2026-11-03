-- ClickHouse.MySql ClickHouse
SELECT
	p.Id,
	concat('Артикул ', p.Sku)
FROM
	ConcatProduct p

-- ClickHouse.MySql ClickHouse
SELECT
	t1.Id,
	t1.Sku,
	t1.Title
FROM
	ConcatProduct t1

