-- ClickHouse.Octonica ClickHouse

SELECT
	c_2.Id,
	o.Id
FROM
	(
		SELECT
			c_1.Id as Id
		FROM
			Customer c_1
		WHERE
			c_1.Id > 0
		LIMIT 10
	) c_2
		LEFT JOIN Order o ON c_2.Id = o.CustomerId

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

