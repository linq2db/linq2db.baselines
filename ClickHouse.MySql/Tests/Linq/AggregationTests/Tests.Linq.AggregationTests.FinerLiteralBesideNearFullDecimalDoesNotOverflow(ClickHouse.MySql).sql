-- ClickHouse.MySql ClickHouse
SELECT
	COUNT(*)
FROM
	(
		SELECT
			g_1.Id as Id
		FROM
			ComputedDecimalRow g_1
		GROUP BY
			g_1.Id
		HAVING
			MAX(g_1.Wide) = toDecimal128('1.000001', 6)
	) t1

