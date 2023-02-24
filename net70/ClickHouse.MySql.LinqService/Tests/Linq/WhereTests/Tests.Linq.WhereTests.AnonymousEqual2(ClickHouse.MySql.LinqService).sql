BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	ch.ParentID,
	ch.ChildID
FROM
	Child ch
WHERE
	(ch.ParentID <> toInt32(2) OR ch.ChildID <> toInt32(21)) AND
	ch.ParentID > toInt32(0)

