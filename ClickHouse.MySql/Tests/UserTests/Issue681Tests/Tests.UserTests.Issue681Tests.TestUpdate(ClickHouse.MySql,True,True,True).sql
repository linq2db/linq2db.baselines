BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	currentDatabase()
FROM
	LinqDataTypes t1
LIMIT 1

BeforeExecute
-- ClickHouse.MySql ClickHouse

ALTER TABLE
	testdb3.Issue681Table
UPDATE
	Value = 10
WHERE
	ID = 5

