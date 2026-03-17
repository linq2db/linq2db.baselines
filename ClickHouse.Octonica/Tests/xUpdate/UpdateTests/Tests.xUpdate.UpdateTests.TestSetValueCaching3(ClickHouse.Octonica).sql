-- ClickHouse.Octonica ClickHouse

ALTER TABLE
	UpdateSetTest
UPDATE
	Value3 = 7
WHERE
	Id = 1

-- ClickHouse.Octonica ClickHouse

SELECT
	t1.Value3
FROM
	UpdateSetTest t1
WHERE
	t1.Id = 1
LIMIT 2

-- ClickHouse.Octonica ClickHouse

ALTER TABLE
	UpdateSetTest
UPDATE
	Value3 = 8
WHERE
	Id = 1

-- ClickHouse.Octonica ClickHouse

SELECT
	t1.Value3
FROM
	UpdateSetTest t1
WHERE
	t1.Id = 1
LIMIT 2

