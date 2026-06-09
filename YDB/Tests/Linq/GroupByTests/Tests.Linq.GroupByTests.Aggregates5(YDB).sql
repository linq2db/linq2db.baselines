-- YDB Ydb

SELECT
	COUNT(CASE
		WHEN g_1.ChildID > 30 THEN 1
		ELSE NULL
	END) as Count1,
	COUNT(CASE
		WHEN g_1.ChildID > 30 THEN 1
		ELSE NULL
	END) as Count2,
	COUNT(*) as Count3
FROM
	Child g_1
GROUP BY
	g_1.ParentID

