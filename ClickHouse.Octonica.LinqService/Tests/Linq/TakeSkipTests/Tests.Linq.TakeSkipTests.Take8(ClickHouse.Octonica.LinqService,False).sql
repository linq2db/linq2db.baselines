BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	t1.ParentID,
	t1.ChildID
FROM
	Child t1
LIMIT toInt32(3)

