-- YDB Ydb
SELECT
	Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(r.D AS Decimal(30,9))) AS Decimal(30,0))) AS Decimal(30,9))) as D,
	Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(r.D AS Decimal(32,9))) * Decimal('100', 32, 9) AS Decimal(32,0))) AS Decimal(32,9))) / Decimal('100', 32, 9) AS Decimal(30,9))) as DTwo,
	Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(r.S AS Decimal(23,2))) * Decimal('10', 23, 2) AS Decimal(23,0))) AS Decimal(23,2))) / Decimal('10', 23, 2) AS Decimal(22,2))) as SOne,
	Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(r.B AS Decimal(35,22))) AS Decimal(35,0))) AS Decimal(35,22))) AS Decimal(22,9))) as B
FROM
	RoundDeclaredShapeFull r
ORDER BY
	r.Id

