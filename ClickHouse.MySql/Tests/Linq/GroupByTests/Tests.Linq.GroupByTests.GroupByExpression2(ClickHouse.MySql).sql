-- ClickHouse.MySql ClickHouse

SELECT
	t1.ChildID,
	avgOrNull(t1.ParentID)
FROM
	Child t1
GROUP BY
	t1.ChildID

