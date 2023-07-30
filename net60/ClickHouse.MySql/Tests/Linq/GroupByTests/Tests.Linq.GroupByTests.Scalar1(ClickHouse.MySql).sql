BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	maxOrNull(t1.ChildID)
FROM
	Child t1
GROUP BY
	t1.ParentID

