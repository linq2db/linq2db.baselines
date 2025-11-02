-- ClickHouse.MySql ClickHouse

SELECT
	COUNT(*),
	1 + minOrNull(g_1.ChildID),
	maxOrNull(g_1.ChildID)
FROM
	Child g_1
LIMIT 1

-- ClickHouse.MySql ClickHouse

SELECT
	t1.ParentID,
	t1.ChildID
FROM
	Child t1

