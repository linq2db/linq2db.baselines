-- YDB Ydb
SELECT
	Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(r.H + r.H AS Decimal(35,22))) AS Decimal(35,0))) AS Decimal(35,22))) AS Decimal(22,9))) as None_1,
	Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(r.H + r.H AS Decimal(35,22))) AS Decimal(35,0))) AS Decimal(35,22))) AS Decimal(22,9))) as Zero,
	Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(r.H + r.H AS Decimal(35,20))) * Decimal('100', 35, 20) AS Decimal(35,0))) AS Decimal(35,20))) / Decimal('100', 35, 20) AS Decimal(22,9))) as Two,
	Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(r.H13 + r.H13 AS Decimal(35,20))) * Decimal('100', 35, 20) AS Decimal(35,0))) AS Decimal(35,20))) / Decimal('100', 35, 20) AS Decimal(22,9))) as H13,
	Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(r.K + r.K AS Decimal(35,20))) * Decimal('100', 35, 20) AS Decimal(35,0))) AS Decimal(35,20))) / Decimal('100', 35, 20) AS Decimal(22,9))) as K_1,
	Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(r.W + r.W AS Decimal(35,22))) AS Decimal(35,0))) AS Decimal(35,22))) AS Decimal(22,9))) as W
FROM
	RoundComputedScale r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(r.H + r.H AS Decimal(35,22))) * Decimal('0.1', 35, 22) AS Decimal(35,0))) AS Decimal(35,22))) / Decimal('0.1', 35, 22) AS Decimal(22,9))) as c1
FROM
	RoundComputedScale r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(SUM(g_1.H) AS Decimal(35,22))) AS Decimal(35,0))) AS Decimal(35,22))) AS Decimal(22,9))) as c1
FROM
	RoundComputedScale g_1
GROUP BY
	g_1.G

