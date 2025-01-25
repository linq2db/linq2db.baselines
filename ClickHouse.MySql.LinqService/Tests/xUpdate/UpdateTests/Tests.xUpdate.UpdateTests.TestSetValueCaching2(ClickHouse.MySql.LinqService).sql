BeforeExecute
-- ClickHouse.MySql ClickHouse

ALTER TABLE
	UpdateSetTest
UPDATE
	Value2 = 11
WHERE
	Id = 1

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	t1.Value2
FROM
	UpdateSetTest t1
WHERE
	t1.Id = 1
LIMIT 2

BeforeExecute
-- ClickHouse.MySql ClickHouse

ALTER TABLE
	UpdateSetTest
UPDATE
	Value2 = 12
WHERE
	Id = 1

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	t1.Value2
FROM
	UpdateSetTest t1
WHERE
	t1.Id = 1
LIMIT 2

