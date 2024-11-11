BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	toInt32(NULL)
FROM
	GrandChild t1
GROUP BY
	t1.ParentID,
	t1.ChildID

