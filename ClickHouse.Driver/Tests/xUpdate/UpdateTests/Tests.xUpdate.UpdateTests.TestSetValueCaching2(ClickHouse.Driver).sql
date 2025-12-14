-- ClickHouse.Driver ClickHouse

ALTER TABLE
	UpdateSetTest
UPDATE
	Value2 = 11
WHERE
	Id = 1

-- ClickHouse.Driver ClickHouse

SELECT
	t1.Value2
FROM
	UpdateSetTest t1
WHERE
	t1.Id = 1
LIMIT 2

-- ClickHouse.Driver ClickHouse

ALTER TABLE
	UpdateSetTest
UPDATE
	Value2 = 12
WHERE
	Id = 1

-- ClickHouse.Driver ClickHouse

SELECT
	t1.Value2
FROM
	UpdateSetTest t1
WHERE
	t1.Id = 1
LIMIT 2

