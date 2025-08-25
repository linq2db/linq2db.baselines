BeforeExecute
-- ClickHouse.MySql ClickHouse (asynchronously)

SELECT
	(toFloat64(COUNT(*)) * toFloat64(100)) / SUM(COUNT(*)) OVER(),
	sum(g_1.ParentID)
FROM
	Child g_1
GROUP BY
	g_1.ParentID
HAVING
	sum(g_1.ParentID) <> 36

