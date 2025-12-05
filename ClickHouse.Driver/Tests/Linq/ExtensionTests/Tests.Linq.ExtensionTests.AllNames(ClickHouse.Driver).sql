-- ClickHouse.Driver ClickHouse

SELECT
	currentDatabase()
FROM
	LinqDataTypes t1
LIMIT 1

-- ClickHouse.Driver ClickHouse

SELECT
	t1.ParentID,
	t1.Value1
FROM
	testdb2.Parent t1

