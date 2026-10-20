-- ClickHouse.Driver ClickHouse
SELECT
	COUNT(*)
FROM
	(
		SELECT
			g_1.Id as Id
		FROM
			ScaledDecimalRow g_1
		GROUP BY
			g_1.Id
		HAVING
			MAX(g_1.Value) = toDecimal128('1.004', 10)
	) t1

-- ClickHouse.Driver ClickHouse
SELECT
	COUNT(*)
FROM
	(
		SELECT
			g_1.Id as Id
		FROM
			ScaledDecimalRow g_1
		GROUP BY
			g_1.Id
		HAVING
			MAX(g_1.Value) < toDecimal128('1.004', 10)
	) t1

-- ClickHouse.Driver ClickHouse
SELECT
	COUNT(*)
FROM
	(
		SELECT
			MAX(g_1.Converted) as Max_1
		FROM
			ScaledDecimalRow g_1
		GROUP BY
			g_1.Id
	) t1
WHERE
	t1.Max_1 IN (toDecimal128('1.004', 10))

