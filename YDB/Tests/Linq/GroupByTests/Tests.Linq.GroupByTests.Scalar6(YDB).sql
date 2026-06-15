-- YDB Ydb

SELECT
	MAX(CASE
		WHEN g_1.ParentID < 3 THEN g_1.ChildID
		ELSE NULL
	END) as Max_1
FROM
	Child g_1
WHERE
	g_1.ParentID < 3
GROUP BY
	g_1.ParentID

