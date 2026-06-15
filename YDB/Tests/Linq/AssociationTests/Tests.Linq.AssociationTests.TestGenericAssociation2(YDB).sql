-- YDB Ydb

SELECT
	t.ParentID as ParentID,
	t.Value1 as Value1
FROM
	Parent t
		INNER JOIN GrandChild g_1 ON t.ParentID = g_1.ParentID
WHERE
	g_1.ChildID > 22
ORDER BY
	g_1.ParentID

