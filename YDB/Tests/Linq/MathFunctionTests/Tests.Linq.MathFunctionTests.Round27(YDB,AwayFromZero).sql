-- YDB Ydb
SELECT
	CASE
		WHEN Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(g_2.Sum_1 AS Decimal(22,9))) AS Decimal(22,0))) AS Decimal(22,9))) - Unwrap(CAST(g_2.Sum_1 AS Decimal(22,9))) = Decimal('-0.5', 22, 9) AND Unwrap(CAST(g_2.Sum_1 AS Decimal(22,9))) > Decimal('0', 22, 9)
			THEN Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(g_2.Sum_1 AS Decimal(22,9))) AS Decimal(22,0))) + Decimal('1', 22, 0) AS Decimal(22,9)))
		WHEN Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(g_2.Sum_1 AS Decimal(22,9))) AS Decimal(22,0))) AS Decimal(22,9))) - Unwrap(CAST(g_2.Sum_1 AS Decimal(22,9))) = Decimal('0.5', 22, 9) AND Unwrap(CAST(g_2.Sum_1 AS Decimal(22,9))) < Decimal('0', 22, 9)
			THEN Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(g_2.Sum_1 AS Decimal(22,9))) AS Decimal(22,0))) - Decimal('1', 22, 0) AS Decimal(22,9)))
		ELSE Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(g_2.Sum_1 AS Decimal(22,9))) AS Decimal(22,0))) AS Decimal(22,9)))
	END as Sum_1,
	CASE
		WHEN Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(g_2.Average AS Decimal(22,9))) AS Decimal(22,0))) AS Decimal(22,9))) - Unwrap(CAST(g_2.Average AS Decimal(22,9))) = Decimal('-0.5', 22, 9) AND Unwrap(CAST(g_2.Average AS Decimal(22,9))) > Decimal('0', 22, 9)
			THEN Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(g_2.Average AS Decimal(22,9))) AS Decimal(22,0))) + Decimal('1', 22, 0) AS Decimal(22,9)))
		WHEN Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(g_2.Average AS Decimal(22,9))) AS Decimal(22,0))) AS Decimal(22,9))) - Unwrap(CAST(g_2.Average AS Decimal(22,9))) = Decimal('0.5', 22, 9) AND Unwrap(CAST(g_2.Average AS Decimal(22,9))) < Decimal('0', 22, 9)
			THEN Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(g_2.Average AS Decimal(22,9))) AS Decimal(22,0))) - Decimal('1', 22, 0) AS Decimal(22,9)))
		ELSE Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(g_2.Average AS Decimal(22,9))) AS Decimal(22,0))) AS Decimal(22,9)))
	END as Average
FROM
	(
		SELECT
			SUM(g_1.D) as Sum_1,
			AVG(g_1.D) as Average
		FROM
			RoundComputed g_1
		GROUP BY
			g_1.G
	) g_2

-- YDB Ydb
SELECT
	CASE
		WHEN Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(r.D * r.D AS Decimal(22,9))) AS Decimal(22,0))) AS Decimal(22,9))) - Unwrap(CAST(r.D * r.D AS Decimal(22,9))) = Decimal('-0.5', 22, 9) AND Unwrap(CAST(r.D * r.D AS Decimal(22,9))) > Decimal('0', 22, 9)
			THEN Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(r.D * r.D AS Decimal(22,9))) AS Decimal(22,0))) + Decimal('1', 22, 0) AS Decimal(22,9)))
		WHEN Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(r.D * r.D AS Decimal(22,9))) AS Decimal(22,0))) AS Decimal(22,9))) - Unwrap(CAST(r.D * r.D AS Decimal(22,9))) = Decimal('0.5', 22, 9) AND Unwrap(CAST(r.D * r.D AS Decimal(22,9))) < Decimal('0', 22, 9)
			THEN Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(r.D * r.D AS Decimal(22,9))) AS Decimal(22,0))) - Decimal('1', 22, 0) AS Decimal(22,9)))
		ELSE Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(r.D * r.D AS Decimal(22,9))) AS Decimal(22,0))) AS Decimal(22,9)))
	END as c1
FROM
	RoundComputed r
ORDER BY
	r.Id

