-- YDB Ydb
SELECT
	Unwrap(CAST(CASE
		WHEN Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(r.H + r.H AS Decimal(35,22))) AS Decimal(35,0))) AS Decimal(35,22))) - Unwrap(CAST(r.H + r.H AS Decimal(35,22))) = Decimal('-0.5', 35, 22) AND Unwrap(CAST(r.H + r.H AS Decimal(35,22))) > Decimal('0', 35, 22)
			THEN Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(r.H + r.H AS Decimal(35,22))) AS Decimal(35,0))) + Decimal('1', 35, 0) AS Decimal(35,22)))
		WHEN Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(r.H + r.H AS Decimal(35,22))) AS Decimal(35,0))) AS Decimal(35,22))) - Unwrap(CAST(r.H + r.H AS Decimal(35,22))) = Decimal('0.5', 35, 22) AND Unwrap(CAST(r.H + r.H AS Decimal(35,22))) < Decimal('0', 35, 22)
			THEN Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(r.H + r.H AS Decimal(35,22))) AS Decimal(35,0))) - Decimal('1', 35, 0) AS Decimal(35,22)))
		ELSE Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(r.H + r.H AS Decimal(35,22))) AS Decimal(35,0))) AS Decimal(35,22)))
	END AS Decimal(22,9))) as None_1,
	Unwrap(CAST(CASE
		WHEN Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(r.H + r.H AS Decimal(35,22))) AS Decimal(35,0))) AS Decimal(35,22))) - Unwrap(CAST(r.H + r.H AS Decimal(35,22))) = Decimal('-0.5', 35, 22) AND Unwrap(CAST(r.H + r.H AS Decimal(35,22))) > Decimal('0', 35, 22)
			THEN Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(r.H + r.H AS Decimal(35,22))) AS Decimal(35,0))) + Decimal('1', 35, 0) AS Decimal(35,22)))
		WHEN Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(r.H + r.H AS Decimal(35,22))) AS Decimal(35,0))) AS Decimal(35,22))) - Unwrap(CAST(r.H + r.H AS Decimal(35,22))) = Decimal('0.5', 35, 22) AND Unwrap(CAST(r.H + r.H AS Decimal(35,22))) < Decimal('0', 35, 22)
			THEN Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(r.H + r.H AS Decimal(35,22))) AS Decimal(35,0))) - Decimal('1', 35, 0) AS Decimal(35,22)))
		ELSE Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(r.H + r.H AS Decimal(35,22))) AS Decimal(35,0))) AS Decimal(35,22)))
	END AS Decimal(22,9))) as Zero,
	Unwrap(CAST(CASE
		WHEN Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(r.H + r.H AS Decimal(35,20))) * Decimal('100', 35, 20) AS Decimal(35,0))) AS Decimal(35,20))) - Unwrap(CAST(r.H + r.H AS Decimal(35,20))) * Decimal('100', 35, 20) = Decimal('-0.5', 35, 20) AND Unwrap(CAST(r.H + r.H AS Decimal(35,20))) * Decimal('100', 35, 20) > Decimal('0', 35, 20)
			THEN Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(r.H + r.H AS Decimal(35,20))) * Decimal('100', 35, 20) AS Decimal(35,0))) + Decimal('1', 35, 0) AS Decimal(35,20)))
		WHEN Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(r.H + r.H AS Decimal(35,20))) * Decimal('100', 35, 20) AS Decimal(35,0))) AS Decimal(35,20))) - Unwrap(CAST(r.H + r.H AS Decimal(35,20))) * Decimal('100', 35, 20) = Decimal('0.5', 35, 20) AND Unwrap(CAST(r.H + r.H AS Decimal(35,20))) * Decimal('100', 35, 20) < Decimal('0', 35, 20)
			THEN Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(r.H + r.H AS Decimal(35,20))) * Decimal('100', 35, 20) AS Decimal(35,0))) - Decimal('1', 35, 0) AS Decimal(35,20)))
		ELSE Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(r.H + r.H AS Decimal(35,20))) * Decimal('100', 35, 20) AS Decimal(35,0))) AS Decimal(35,20)))
	END / Decimal('100', 35, 20) AS Decimal(22,9))) as Two,
	Unwrap(CAST(CASE
		WHEN Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(r.H13 + r.H13 AS Decimal(35,20))) * Decimal('100', 35, 20) AS Decimal(35,0))) AS Decimal(35,20))) - Unwrap(CAST(r.H13 + r.H13 AS Decimal(35,20))) * Decimal('100', 35, 20) = Decimal('-0.5', 35, 20) AND Unwrap(CAST(r.H13 + r.H13 AS Decimal(35,20))) * Decimal('100', 35, 20) > Decimal('0', 35, 20)
			THEN Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(r.H13 + r.H13 AS Decimal(35,20))) * Decimal('100', 35, 20) AS Decimal(35,0))) + Decimal('1', 35, 0) AS Decimal(35,20)))
		WHEN Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(r.H13 + r.H13 AS Decimal(35,20))) * Decimal('100', 35, 20) AS Decimal(35,0))) AS Decimal(35,20))) - Unwrap(CAST(r.H13 + r.H13 AS Decimal(35,20))) * Decimal('100', 35, 20) = Decimal('0.5', 35, 20) AND Unwrap(CAST(r.H13 + r.H13 AS Decimal(35,20))) * Decimal('100', 35, 20) < Decimal('0', 35, 20)
			THEN Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(r.H13 + r.H13 AS Decimal(35,20))) * Decimal('100', 35, 20) AS Decimal(35,0))) - Decimal('1', 35, 0) AS Decimal(35,20)))
		ELSE Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(r.H13 + r.H13 AS Decimal(35,20))) * Decimal('100', 35, 20) AS Decimal(35,0))) AS Decimal(35,20)))
	END / Decimal('100', 35, 20) AS Decimal(22,9))) as H13,
	Unwrap(CAST(CASE
		WHEN Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(r.K + r.K AS Decimal(35,20))) * Decimal('100', 35, 20) AS Decimal(35,0))) AS Decimal(35,20))) - Unwrap(CAST(r.K + r.K AS Decimal(35,20))) * Decimal('100', 35, 20) = Decimal('-0.5', 35, 20) AND Unwrap(CAST(r.K + r.K AS Decimal(35,20))) * Decimal('100', 35, 20) > Decimal('0', 35, 20)
			THEN Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(r.K + r.K AS Decimal(35,20))) * Decimal('100', 35, 20) AS Decimal(35,0))) + Decimal('1', 35, 0) AS Decimal(35,20)))
		WHEN Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(r.K + r.K AS Decimal(35,20))) * Decimal('100', 35, 20) AS Decimal(35,0))) AS Decimal(35,20))) - Unwrap(CAST(r.K + r.K AS Decimal(35,20))) * Decimal('100', 35, 20) = Decimal('0.5', 35, 20) AND Unwrap(CAST(r.K + r.K AS Decimal(35,20))) * Decimal('100', 35, 20) < Decimal('0', 35, 20)
			THEN Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(r.K + r.K AS Decimal(35,20))) * Decimal('100', 35, 20) AS Decimal(35,0))) - Decimal('1', 35, 0) AS Decimal(35,20)))
		ELSE Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(r.K + r.K AS Decimal(35,20))) * Decimal('100', 35, 20) AS Decimal(35,0))) AS Decimal(35,20)))
	END / Decimal('100', 35, 20) AS Decimal(22,9))) as K_1,
	Unwrap(CAST(CASE
		WHEN Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(r.W + r.W AS Decimal(35,22))) AS Decimal(35,0))) AS Decimal(35,22))) - Unwrap(CAST(r.W + r.W AS Decimal(35,22))) = Decimal('-0.5', 35, 22) AND Unwrap(CAST(r.W + r.W AS Decimal(35,22))) > Decimal('0', 35, 22)
			THEN Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(r.W + r.W AS Decimal(35,22))) AS Decimal(35,0))) + Decimal('1', 35, 0) AS Decimal(35,22)))
		WHEN Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(r.W + r.W AS Decimal(35,22))) AS Decimal(35,0))) AS Decimal(35,22))) - Unwrap(CAST(r.W + r.W AS Decimal(35,22))) = Decimal('0.5', 35, 22) AND Unwrap(CAST(r.W + r.W AS Decimal(35,22))) < Decimal('0', 35, 22)
			THEN Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(r.W + r.W AS Decimal(35,22))) AS Decimal(35,0))) - Decimal('1', 35, 0) AS Decimal(35,22)))
		ELSE Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(r.W + r.W AS Decimal(35,22))) AS Decimal(35,0))) AS Decimal(35,22)))
	END AS Decimal(22,9))) as W
FROM
	RoundComputedScale r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	Unwrap(CAST(CASE
		WHEN Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(r.H + r.H AS Decimal(35,22))) * Decimal('0.1', 35, 22) AS Decimal(35,0))) AS Decimal(35,22))) - Unwrap(CAST(r.H + r.H AS Decimal(35,22))) * Decimal('0.1', 35, 22) = Decimal('-0.5', 35, 22) AND Unwrap(CAST(r.H + r.H AS Decimal(35,22))) * Decimal('0.1', 35, 22) > Decimal('0', 35, 22)
			THEN Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(r.H + r.H AS Decimal(35,22))) * Decimal('0.1', 35, 22) AS Decimal(35,0))) + Decimal('1', 35, 0) AS Decimal(35,22)))
		WHEN Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(r.H + r.H AS Decimal(35,22))) * Decimal('0.1', 35, 22) AS Decimal(35,0))) AS Decimal(35,22))) - Unwrap(CAST(r.H + r.H AS Decimal(35,22))) * Decimal('0.1', 35, 22) = Decimal('0.5', 35, 22) AND Unwrap(CAST(r.H + r.H AS Decimal(35,22))) * Decimal('0.1', 35, 22) < Decimal('0', 35, 22)
			THEN Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(r.H + r.H AS Decimal(35,22))) * Decimal('0.1', 35, 22) AS Decimal(35,0))) - Decimal('1', 35, 0) AS Decimal(35,22)))
		ELSE Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(r.H + r.H AS Decimal(35,22))) * Decimal('0.1', 35, 22) AS Decimal(35,0))) AS Decimal(35,22)))
	END / Decimal('0.1', 35, 22) AS Decimal(22,9))) as c1
FROM
	RoundComputedScale r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	Unwrap(CAST(CASE
		WHEN Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(g_2.Sum_1 AS Decimal(35,22))) AS Decimal(35,0))) AS Decimal(35,22))) - Unwrap(CAST(g_2.Sum_1 AS Decimal(35,22))) = Decimal('-0.5', 35, 22) AND Unwrap(CAST(g_2.Sum_1 AS Decimal(35,22))) > Decimal('0', 35, 22)
			THEN Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(g_2.Sum_1 AS Decimal(35,22))) AS Decimal(35,0))) + Decimal('1', 35, 0) AS Decimal(35,22)))
		WHEN Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(g_2.Sum_1 AS Decimal(35,22))) AS Decimal(35,0))) AS Decimal(35,22))) - Unwrap(CAST(g_2.Sum_1 AS Decimal(35,22))) = Decimal('0.5', 35, 22) AND Unwrap(CAST(g_2.Sum_1 AS Decimal(35,22))) < Decimal('0', 35, 22)
			THEN Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(g_2.Sum_1 AS Decimal(35,22))) AS Decimal(35,0))) - Decimal('1', 35, 0) AS Decimal(35,22)))
		ELSE Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(g_2.Sum_1 AS Decimal(35,22))) AS Decimal(35,0))) AS Decimal(35,22)))
	END AS Decimal(22,9))) as c1
FROM
	(
		SELECT
			SUM(g_1.H) as Sum_1
		FROM
			RoundComputedScale g_1
		GROUP BY
			g_1.G
	) g_2

