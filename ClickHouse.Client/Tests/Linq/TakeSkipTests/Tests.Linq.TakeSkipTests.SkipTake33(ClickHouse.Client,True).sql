BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	t1.ParentID,
	t1.ChildID
FROM
	Child t1
ORDER BY
	t1.ChildID
LIMIT toInt32(3), toInt32(5)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	t1.ParentID,
	t1.ChildID
FROM
	Child t1
ORDER BY
	t1.ChildID
LIMIT toInt32(3), toInt32(5)

