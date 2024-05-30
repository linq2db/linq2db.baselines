BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	g_1.ParentID
FROM
	Child g_1
GROUP BY
	g_1.ParentID

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	t1.ParentID,
	t1.ChildID
FROM
	Child t1

