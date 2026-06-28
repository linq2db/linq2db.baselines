-- YDB Ydb

SELECT
	g_1.ParentID as ParentID
FROM
	Child g_1
GROUP BY
	g_1.ParentID
HAVING
	COUNT(*) > 2

