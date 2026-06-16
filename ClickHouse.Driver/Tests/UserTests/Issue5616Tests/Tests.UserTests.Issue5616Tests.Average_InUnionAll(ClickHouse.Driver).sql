-- ClickHouse.Driver ClickHouse

SELECT
	toFloat64(toFloat64(0)) as Count_1
FROM
	Table1 t1
UNION ALL
SELECT
	AVG(g_1.Id) as Count_1
FROM
	Table2 g_1
GROUP BY
	g_1.Id

