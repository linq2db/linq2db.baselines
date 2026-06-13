-- YDB Ydb

SELECT
	g_1.ParentID as Key_1
FROM
	Child g_1
GROUP BY
	g_1.ParentID
HAVING
	COUNT(CASE
		WHEN g_1.ChildID > 20 THEN 1
		ELSE NULL
	END) > 2

