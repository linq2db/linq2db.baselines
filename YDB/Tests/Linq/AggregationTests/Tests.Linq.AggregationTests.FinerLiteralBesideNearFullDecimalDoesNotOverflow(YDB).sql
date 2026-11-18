-- YDB Ydb
SELECT
	COUNT(*) as Count_1
FROM
	(
		SELECT
			g_1.Id as Id
		FROM
			ComputedDecimalRow g_1
		GROUP BY
			g_1.Id
		HAVING
			MAX(g_1.Wide) = Decimal('1.000001', 22, 6)
	) t1

