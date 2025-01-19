BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	currentDatabase()
FROM
	LinqDataTypes t1
LIMIT 1

BeforeExecute
-- ClickHouse.Octonica ClickHouse

ALTER TABLE
	testdb1.Issue681Table
UPDATE
	Value = 10
WHERE
	ID = 5

