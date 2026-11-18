-- ClickHouse.Driver ClickHouse
SELECT
	COUNT(*)
FROM
	(
		SELECT
			g_1.Id as Id
		FROM
			ClickHouseDecimal32Row g_1
		GROUP BY
			g_1.Id
		HAVING
			MAX(g_1.Value) = toDecimal64('1.004', 3)
	) t1

