-- YDB Ydb

SELECT
	pmp1.ChildID as ChildID
FROM
	(
		SELECT DISTINCT
			g_1.ParentID as ParentID
		FROM
			Child g_1
	) pmp
		CROSS JOIN Child pmp1

-- YDB Ydb

SELECT
	t1.ParentID as ParentID,
	t1.ChildID as ChildID
FROM
	Child t1

