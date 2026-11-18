-- YDB Ydb
SELECT
	Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(SUM(g_1.D) AS Decimal(35,22))) AS Decimal(35,0))) AS Decimal(35,22))) AS Decimal(22,9))) as Sum_1,
	Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(AVG(g_1.D) AS Decimal(35,22))) AS Decimal(35,0))) AS Decimal(35,22))) AS Decimal(22,9))) as Average
FROM
	RoundComputed g_1
GROUP BY
	g_1.G

-- YDB Ydb
SELECT
	t1.Id as Id,
	t1.G as G_1,
	t1.D as D
FROM
	RoundComputed t1

-- YDB Ydb
SELECT
	Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(r.D * r.D AS Decimal(35,22))) AS Decimal(35,0))) AS Decimal(35,22))) AS Decimal(22,9))) as c1
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

