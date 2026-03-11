-- ClickHouse.Octonica ClickHouse

SELECT
	x.Name,
	o.Id
FROM
	Customer x
		LEFT JOIN Order o ON x.Id = o.CustomerId

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

