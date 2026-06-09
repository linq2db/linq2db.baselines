-- YDB Ydb

SELECT
	t.ParentID as ParentID,
	t.Value1 as Value1
FROM
	Parent t
		INNER JOIN Child g_1 ON t.ParentID = g_1.ParentID
WHERE
	Abs(g_1.ChildID) > 3
ORDER BY
	g_1.ParentID

