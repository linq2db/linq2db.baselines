-- YDB Ydb

SELECT
	MAX(g_1.ChildID) as Max1,
	MAX(g_1.ChildID + g_1.ParentID) as Max2
FROM
	Child g_1
GROUP BY
	g_1.ParentID

