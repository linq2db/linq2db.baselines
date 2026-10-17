-- ClickHouse.Octonica ClickHouse
SELECT
	COUNT(*)
FROM
	(
		SELECT
			MAX(g_1.Value) as Max_1
		FROM
			ScaledDecimalRow g_1
		GROUP BY
			g_1.Id
	) t1
WHERE
	t1.Max_1 IN (toDecimal128('1.004', 10))

