BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	currentDatabase()
FROM
	LinqDataTypes _
LIMIT toInt32(1)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	t1.ParentID,
	t1.Value1
FROM
	testdb2.Parent t1

