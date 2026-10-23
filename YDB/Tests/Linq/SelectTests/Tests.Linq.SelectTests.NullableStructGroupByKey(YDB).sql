-- YDB Ydb
SELECT
	g_1.ParentID as ParentID,
	g_1.Value1 as Value1,
	COUNT(*) as Count_1
FROM
	Parent g_1
GROUP BY
	g_1.ParentID,
	g_1.Value1

-- YDB Ydb
SELECT
	t1.ParentID as ParentID,
	t1.Value1 as Value1
FROM
	Parent t1

