BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	Count(*),
	maxOrNull(t1.ChildID)
FROM
	Child t1
GROUP BY
	t1.ParentID

