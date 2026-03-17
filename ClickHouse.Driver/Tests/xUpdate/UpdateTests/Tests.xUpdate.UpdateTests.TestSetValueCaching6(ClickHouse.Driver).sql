-- ClickHouse.Driver ClickHouse

ALTER TABLE
	UpdateSetTest
UPDATE
	Value6 = 7
WHERE
	Id = 1

-- ClickHouse.Driver ClickHouse

SELECT
	t1.Value6
FROM
	UpdateSetTest t1
WHERE
	t1.Id = 1
LIMIT 2

-- ClickHouse.Driver ClickHouse

ALTER TABLE
	UpdateSetTest
UPDATE
	Value6 = 8
WHERE
	Id = 1

-- ClickHouse.Driver ClickHouse

SELECT
	t1.Value6
FROM
	UpdateSetTest t1
WHERE
	t1.Id = 1
LIMIT 2

