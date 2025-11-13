-- ClickHouse.Driver ClickHouse

SELECT
	(toFloat64(COUNT(*)) * toFloat64(100)) / SUM(COUNT(*)) OVER(),
	sumOrNull(g_1.ParentID)
FROM
	Child g_1
GROUP BY
	g_1.ParentID
HAVING
	sumOrNull(g_1.ParentID) <> 36 OR sumOrNull(g_1.ParentID) IS NULL

