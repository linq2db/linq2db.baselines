-- ClickHouse.Octonica ClickHouse
SELECT
	p.Id
FROM
	ConcatProduct p
WHERE
	(concat(p.Sku, 'Жук')) IN ('A-100Жук', 'B-200Щит')

-- ClickHouse.Octonica ClickHouse
SELECT
	t1.Id,
	t1.Sku,
	t1.Title
FROM
	ConcatProduct t1

-- ClickHouse.Octonica ClickHouse
SELECT
	p.Id
FROM
	ConcatProduct p
WHERE
	(concat(p.Sku, 'Жук')) IN (p.Title, 'B-200Жук')

-- ClickHouse.Octonica ClickHouse
SELECT
	t1.Id,
	t1.Sku,
	t1.Title
FROM
	ConcatProduct t1

