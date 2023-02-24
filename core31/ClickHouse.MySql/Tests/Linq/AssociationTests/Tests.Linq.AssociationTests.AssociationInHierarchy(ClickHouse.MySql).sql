BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	o.ParentID,
	o.Value1
FROM
	Child ch
		LEFT JOIN Parent o ON ch.ParentID = o.ParentID AND ch.ChildID = toInt32(1)

