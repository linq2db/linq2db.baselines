-- YDB Ydb

SELECT
	SUM(g_1.ParentID) as Sum_1
FROM
	Child g_1
GROUP BY
	g_1.ChildID

