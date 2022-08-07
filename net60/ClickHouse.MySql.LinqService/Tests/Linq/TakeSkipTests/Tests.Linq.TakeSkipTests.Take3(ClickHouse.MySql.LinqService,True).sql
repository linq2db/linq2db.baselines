BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	ch.ParentID,
	ch.ChildID
FROM
	Child ch
WHERE
	(ch.ChildID > toInt32(3) OR ch.ChildID < toInt32(4))
LIMIT toInt32(3)

