-- ClickHouse.MySql ClickHouse
SELECT
	g_1.ItemId,
	MAX(g_1.Value = '10'),
	MIN(g_1.Value = '10')
FROM
	ItemValue g_1
GROUP BY
	g_1.ItemId
ORDER BY
	g_1.ItemId

