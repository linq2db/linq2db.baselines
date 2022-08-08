BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	ch.ParentID,
	ch.ChildID
FROM
	Child ch
LIMIT toInt32(1)

