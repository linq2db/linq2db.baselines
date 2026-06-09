-- YDB Ydb

SELECT
	g_2.ChildId as ChildId,
	g_2.ParentId as ParentId,
	COUNT(*) as Count_1
FROM
	(
		SELECT
			1 as ChildId,
			2 as ParentId
		FROM
			Child g_1
	) g_2
GROUP BY
	g_2.ChildId,
	g_2.ParentId

-- YDB Ydb

SELECT
	t1.ParentID as ParentID,
	t1.ChildID as ChildID
FROM
	Child t1

