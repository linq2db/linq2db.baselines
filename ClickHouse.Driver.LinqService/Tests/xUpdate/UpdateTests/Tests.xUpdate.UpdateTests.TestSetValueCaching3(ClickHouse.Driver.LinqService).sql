BeforeExecute
-- ClickHouse.Driver ClickHouse (asynchronously)

ALTER TABLE
	UpdateSetTest
UPDATE
	Value3 = 7
WHERE
	Id = 1

BeforeExecute
-- ClickHouse.Driver ClickHouse (asynchronously)

SELECT
	t1.Value3
FROM
	UpdateSetTest t1
WHERE
	t1.Id = 1
LIMIT 2

BeforeExecute
-- ClickHouse.Driver ClickHouse (asynchronously)

ALTER TABLE
	UpdateSetTest
UPDATE
	Value3 = 8
WHERE
	Id = 1

BeforeExecute
-- ClickHouse.Driver ClickHouse (asynchronously)

SELECT
	t1.Value3
FROM
	UpdateSetTest t1
WHERE
	t1.Id = 1
LIMIT 2

