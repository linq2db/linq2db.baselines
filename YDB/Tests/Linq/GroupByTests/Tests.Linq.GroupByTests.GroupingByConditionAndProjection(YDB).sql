-- YDB Ydb

SELECT
	g_2.Key_1 as Key_1,
	COUNT(*) as Count_1
FROM
	(
		SELECT
			CASE
				WHEN g_1.ChildID % 2 = 0 THEN g_1.ParentID
				ELSE NULL
			END as Key_1
		FROM
			Child g_1
	) g_2
GROUP BY
	g_2.Key_1

-- YDB Ydb

SELECT
	t1.ParentID as ParentID,
	t1.ChildID as ChildID
FROM
	Child t1

