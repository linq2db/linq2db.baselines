BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	t1.ChildID,
	avg(t1.ParentID)
FROM
	Child t1
GROUP BY
	t1.ChildID

