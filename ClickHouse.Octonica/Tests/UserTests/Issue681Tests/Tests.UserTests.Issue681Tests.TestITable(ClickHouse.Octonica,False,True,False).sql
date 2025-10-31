-- ClickHouse.Octonica ClickHouse

SELECT
	currentDatabase()
FROM
	LinqDataTypes t1
LIMIT 1

-- ClickHouse.Octonica ClickHouse

SELECT
	t1.ID,
	t1.Value
FROM
	testdb1.Issue681Table t1

