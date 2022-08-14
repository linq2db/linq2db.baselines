BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	sumOrNull(t1.ChildID)
FROM
	Child t1
GROUP BY
	t1.ParentID

