-- ClickHouse.Octonica ClickHouse

SELECT
	currentDatabase()
FROM
	LinqDataTypes t1
LIMIT 1

-- ClickHouse.Octonica ClickHouse

ALTER TABLE
	testdb1.Issue681Table
DELETE WHERE
	ID = 5

