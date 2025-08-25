BeforeExecute
-- ClickHouse.MySql ClickHouse (asynchronously)

SELECT
	COUNT(*)
FROM
	Child g_1
GROUP BY
	g_1.ParentID
HAVING
	COUNT(*) > 1

