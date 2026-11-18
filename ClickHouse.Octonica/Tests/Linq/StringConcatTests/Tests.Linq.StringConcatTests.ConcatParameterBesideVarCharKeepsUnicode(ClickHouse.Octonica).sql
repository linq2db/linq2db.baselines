-- ClickHouse.Octonica ClickHouse
SELECT
	p.Id,
	concat(p.Sku, 'Жук'),
	concat('Жук', p.Sku, 'Жук'),
	concat(p.Sku, 'Жук')
FROM
	ConcatProduct p

-- ClickHouse.Octonica ClickHouse
SELECT
	t1.Id,
	t1.Sku,
	t1.Title
FROM
	ConcatProduct t1

