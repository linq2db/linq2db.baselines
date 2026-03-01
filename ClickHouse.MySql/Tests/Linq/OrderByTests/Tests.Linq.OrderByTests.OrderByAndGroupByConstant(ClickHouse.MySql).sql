-- ClickHouse.MySql ClickHouse

SELECT
	g_2.Count_1,
	1 + g_2.Expr,
	g_2.Max_1
FROM
	(
		SELECT
			COUNT(*) as Count_1,
			minOrNull(g_1.ChildID) as Expr,
			maxOrNull(g_1.ChildID) as Max_1
		FROM
			Child g_1
	) g_2
LIMIT 1

-- ClickHouse.MySql ClickHouse

SELECT
	t1.ParentID,
	t1.ChildID
FROM
	Child t1

