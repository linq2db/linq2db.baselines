-- ClickHouse.Octonica ClickHouse
SELECT
	t.Name,
	o.Name
FROM
	Customer t
		LEFT JOIN Order o ON t.Id = o.CustomerId

-- ClickHouse.Octonica ClickHouse
SELECT
	t1.Id,
	t1.Name
FROM
	Customer t1

-- ClickHouse.Octonica ClickHouse
SELECT
	t1.Id,
	t1.CustomerId,
	t1.Name
FROM
	Order t1

