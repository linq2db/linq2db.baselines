BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	ch.ChildID + toInt32(1),
	sumOrNull(ch.ParentID)
FROM
	Child ch
GROUP BY
	ch.ChildID + toInt32(1)

