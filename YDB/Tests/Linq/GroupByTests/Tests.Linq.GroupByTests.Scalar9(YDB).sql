-- YDB Ydb

SELECT
	COUNT(CASE
		WHEN g_1.ChildID < 30 THEN 1
		ELSE NULL
	END) as Count_1
FROM
	Child g_1
GROUP BY
	g_1.ParentID

