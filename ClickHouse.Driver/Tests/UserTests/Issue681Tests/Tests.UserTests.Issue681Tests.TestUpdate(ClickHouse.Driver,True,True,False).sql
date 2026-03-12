-- ClickHouse.Driver ClickHouse

SELECT
	currentDatabase()
FROM
	LinqDataTypes t1
LIMIT 1

-- ClickHouse.Driver ClickHouse

ALTER TABLE
	testdb2.Issue681Table
UPDATE
	Value = 10
WHERE
	ID = 5

