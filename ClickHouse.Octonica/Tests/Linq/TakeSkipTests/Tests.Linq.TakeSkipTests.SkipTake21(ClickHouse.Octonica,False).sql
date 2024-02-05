BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	t1.ParentID,
	t1.ChildID
FROM
	Child t1
ORDER BY
	t1.ChildID DESC
LIMIT toInt32(2), toInt32(5)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	t1.ParentID,
	t1.ChildID
FROM
	Child t1
ORDER BY
	t1.ChildID DESC
LIMIT toInt32(2), toInt32(5)

