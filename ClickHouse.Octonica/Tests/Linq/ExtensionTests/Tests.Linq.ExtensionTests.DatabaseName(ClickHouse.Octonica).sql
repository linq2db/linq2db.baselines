-- ClickHouse.Octonica ClickHouse

SELECT
	currentDatabase()
FROM
	LinqDataTypes t1
LIMIT 1

-- ClickHouse.Octonica ClickHouse

SELECT
	t1.ParentID,
	t1.Value1
FROM
	testdb1.Parent t1

