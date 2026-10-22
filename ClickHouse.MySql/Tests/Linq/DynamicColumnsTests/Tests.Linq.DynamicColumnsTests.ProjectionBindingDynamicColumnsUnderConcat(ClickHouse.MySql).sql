-- ClickHouse.MySql ClickHouse
SELECT
	g_1.FirstName,
	COUNT(*) as Count_1
FROM
	Person g_1
GROUP BY
	g_1.FirstName
UNION ALL
SELECT
	g_2.FirstName as FirstName,
	COUNT(*) as Count_1
FROM
	Person g_2
GROUP BY
	g_2.FirstName

