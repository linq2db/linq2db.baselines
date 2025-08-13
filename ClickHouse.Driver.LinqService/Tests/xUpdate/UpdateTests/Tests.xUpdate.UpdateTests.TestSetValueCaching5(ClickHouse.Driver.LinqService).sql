BeforeExecute
-- ClickHouse.Driver ClickHouse

ALTER TABLE
	UpdateSetTest
UPDATE
	Value5 = 11
WHERE
	Id = 1

BeforeExecute
-- ClickHouse.Driver ClickHouse

SELECT
	t1.Value5
FROM
	UpdateSetTest t1
WHERE
	t1.Id = 1
LIMIT 2

BeforeExecute
-- ClickHouse.Driver ClickHouse

ALTER TABLE
	UpdateSetTest
UPDATE
	Value5 = 12
WHERE
	Id = 1

BeforeExecute
-- ClickHouse.Driver ClickHouse

SELECT
	t1.Value5
FROM
	UpdateSetTest t1
WHERE
	t1.Id = 1
LIMIT 2

