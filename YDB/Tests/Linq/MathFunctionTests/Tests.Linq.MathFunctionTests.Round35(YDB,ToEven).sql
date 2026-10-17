-- YDB Ydb
SELECT
	Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(r.B AS Decimal(35,20))) * Decimal('100', 35, 20) AS Decimal(35,0))) AS Decimal(35,20))) / Decimal('100', 35, 20) AS Decimal(22,9))) as c1
FROM
	RoundDeclaredShapeFull r
ORDER BY
	r.Id

