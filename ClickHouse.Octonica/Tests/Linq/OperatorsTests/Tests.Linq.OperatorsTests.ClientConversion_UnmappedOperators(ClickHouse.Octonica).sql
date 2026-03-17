-- ClickHouse.Octonica ClickHouse

SELECT
	i.Id
FROM
	Tender i

-- ClickHouse.Octonica ClickHouse

SELECT
	t1.Id,
	t1.Name
FROM
	Tender t1

-- ClickHouse.Octonica ClickHouse

SELECT
	r.Id
FROM
	Tender r
WHERE
	r.Id = toUUID('00000000-0000-0000-0000-000000000000')
LIMIT 1

-- ClickHouse.Octonica ClickHouse

SELECT
	i.Id
FROM
	Tender i
LIMIT 1

