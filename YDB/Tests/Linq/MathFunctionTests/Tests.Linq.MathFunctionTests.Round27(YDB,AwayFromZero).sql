-- YDB Ydb
SELECT
	Unwrap(CAST(CASE
		WHEN Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(g_2.Sum_1 AS Decimal(35,22))) AS Decimal(35,0))) AS Decimal(35,22))) - Unwrap(CAST(g_2.Sum_1 AS Decimal(35,22))) = Decimal('-0.5', 35, 22) AND Unwrap(CAST(g_2.Sum_1 AS Decimal(35,22))) > Decimal('0', 35, 22)
			THEN Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(g_2.Sum_1 AS Decimal(35,22))) AS Decimal(35,0))) + Decimal('1', 35, 0) AS Decimal(35,22)))
		WHEN Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(g_2.Sum_1 AS Decimal(35,22))) AS Decimal(35,0))) AS Decimal(35,22))) - Unwrap(CAST(g_2.Sum_1 AS Decimal(35,22))) = Decimal('0.5', 35, 22) AND Unwrap(CAST(g_2.Sum_1 AS Decimal(35,22))) < Decimal('0', 35, 22)
			THEN Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(g_2.Sum_1 AS Decimal(35,22))) AS Decimal(35,0))) - Decimal('1', 35, 0) AS Decimal(35,22)))
		ELSE Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(g_2.Sum_1 AS Decimal(35,22))) AS Decimal(35,0))) AS Decimal(35,22)))
	END AS Decimal(22,9))) as Sum_1,
	Unwrap(CAST(CASE
		WHEN Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(g_2.Average AS Decimal(35,22))) AS Decimal(35,0))) AS Decimal(35,22))) - Unwrap(CAST(g_2.Average AS Decimal(35,22))) = Decimal('-0.5', 35, 22) AND Unwrap(CAST(g_2.Average AS Decimal(35,22))) > Decimal('0', 35, 22)
			THEN Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(g_2.Average AS Decimal(35,22))) AS Decimal(35,0))) + Decimal('1', 35, 0) AS Decimal(35,22)))
		WHEN Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(g_2.Average AS Decimal(35,22))) AS Decimal(35,0))) AS Decimal(35,22))) - Unwrap(CAST(g_2.Average AS Decimal(35,22))) = Decimal('0.5', 35, 22) AND Unwrap(CAST(g_2.Average AS Decimal(35,22))) < Decimal('0', 35, 22)
			THEN Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(g_2.Average AS Decimal(35,22))) AS Decimal(35,0))) - Decimal('1', 35, 0) AS Decimal(35,22)))
		ELSE Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(g_2.Average AS Decimal(35,22))) AS Decimal(35,0))) AS Decimal(35,22)))
	END AS Decimal(22,9))) as Average
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
	t1.Id as Id,
	t1.G as G_1,
	t1.D as D
FROM
	RoundComputed t1

-- YDB Ydb
SELECT
	Unwrap(CAST(CASE
		WHEN Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(r.D * r.D AS Decimal(35,22))) AS Decimal(35,0))) AS Decimal(35,22))) - Unwrap(CAST(r.D * r.D AS Decimal(35,22))) = Decimal('-0.5', 35, 22) AND Unwrap(CAST(r.D * r.D AS Decimal(35,22))) > Decimal('0', 35, 22)
			THEN Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(r.D * r.D AS Decimal(35,22))) AS Decimal(35,0))) + Decimal('1', 35, 0) AS Decimal(35,22)))
		WHEN Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(r.D * r.D AS Decimal(35,22))) AS Decimal(35,0))) AS Decimal(35,22))) - Unwrap(CAST(r.D * r.D AS Decimal(35,22))) = Decimal('0.5', 35, 22) AND Unwrap(CAST(r.D * r.D AS Decimal(35,22))) < Decimal('0', 35, 22)
			THEN Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(r.D * r.D AS Decimal(35,22))) AS Decimal(35,0))) - Decimal('1', 35, 0) AS Decimal(35,22)))
		ELSE Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(r.D * r.D AS Decimal(35,22))) AS Decimal(35,0))) AS Decimal(35,22)))
	END AS Decimal(22,9))) as c1
FROM
	RoundComputed r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	t1.Id as Id,
	t1.G as G_1,
	t1.D as D
FROM
	RoundComputed t1

