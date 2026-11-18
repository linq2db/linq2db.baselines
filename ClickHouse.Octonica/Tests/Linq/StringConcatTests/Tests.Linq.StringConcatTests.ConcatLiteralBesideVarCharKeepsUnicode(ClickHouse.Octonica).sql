-- ClickHouse.Octonica ClickHouse
SELECT
	p.Id,
	concat('Артикул ', p.Sku)
FROM
	ConcatProduct p

-- ClickHouse.Octonica ClickHouse
SELECT
	t1.Id,
	t1.Sku,
	t1.Title
FROM
	ConcatProduct t1

