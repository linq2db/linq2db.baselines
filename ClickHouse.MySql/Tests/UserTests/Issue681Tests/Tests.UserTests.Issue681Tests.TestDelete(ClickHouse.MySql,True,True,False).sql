-- ClickHouse.MySql ClickHouse

SELECT
	currentDatabase()
FROM
	LinqDataTypes t1
LIMIT 1

-- ClickHouse.MySql ClickHouse

ALTER TABLE
	testdb3.Issue681Table
DELETE WHERE
	ID = 5

