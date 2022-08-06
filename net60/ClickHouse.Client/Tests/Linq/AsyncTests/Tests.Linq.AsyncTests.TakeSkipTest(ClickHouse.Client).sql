BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	t1.ParentID,
	t1.Value1
FROM
	Parent t1
ORDER BY
	t1.ParentID
LIMIT toInt32(1), toInt32(2)

BeforeExecute
-- ClickHouse.Client ClickHouse (asynchronously)

SELECT
	t1.ParentID,
	t1.Value1
FROM
	Parent t1
ORDER BY
	t1.ParentID
LIMIT toInt32(1), toInt32(2)

