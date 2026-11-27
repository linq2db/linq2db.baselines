-- YDB Ydb
SELECT
	g_2.Key_1 as Key_1,
	SUM(g_2.ChildID + g_2.Key_1) as Sum_1,
	SUM(g_2.ChildID + Abs(g_2.Key_1)) as SumOfMapped
FROM
	(
		SELECT
			g_1.ChildID % 3 as Key_1,
			g_1.ChildID as ChildID
		FROM
			Child g_1
	) g_2
GROUP BY
	g_2.Key_1

-- YDB Ydb
SELECT
	g_2.ParentID as ParentID,
	g_2.Odd as Odd,
	SUM(g_2.ChildID + g_2.ParentID) as Sum_1
FROM
	(
		SELECT
			g_1.ParentID as ParentID,
			g_1.ChildID % 2 as Odd,
			g_1.ChildID as ChildID
		FROM
			Child g_1
	) g_2
GROUP BY
	g_2.ParentID,
	g_2.Odd

