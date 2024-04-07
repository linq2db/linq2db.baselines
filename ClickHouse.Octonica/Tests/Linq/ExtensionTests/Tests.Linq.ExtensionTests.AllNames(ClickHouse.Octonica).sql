BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	currentDatabase()
FROM
	LinqDataTypes _
LIMIT toInt32(1)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	t1.ParentID,
	t1.Value1
FROM
	testdb1.Parent t1

