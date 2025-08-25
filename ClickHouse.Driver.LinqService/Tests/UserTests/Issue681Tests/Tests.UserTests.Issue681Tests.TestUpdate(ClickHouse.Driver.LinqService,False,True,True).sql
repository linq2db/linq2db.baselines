BeforeExecute
-- ClickHouse.Driver ClickHouse (asynchronously)

SELECT
	currentDatabase()
FROM
	LinqDataTypes t1
LIMIT 1

BeforeExecute
-- ClickHouse.Driver ClickHouse (asynchronously)

ALTER TABLE
	testdb2.Issue681Table
UPDATE
	Value = 10
WHERE
	ID = 5

