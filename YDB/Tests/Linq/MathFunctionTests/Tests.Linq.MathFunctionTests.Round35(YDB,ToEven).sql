-- YDB Ydb
SELECT
	Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(r.B AS Decimal(35,20))) * Decimal('100', 35, 20) AS Decimal(35,0))) AS Decimal(35,20))) / Decimal('100', 35, 20) AS Decimal(22,9))) as c1
FROM
	RoundDeclaredShapeFull r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	t1.Id as Id,
	t1.D as D,
	t1.S as S,
	t1.B as B,
	t1.P as P
FROM
	RoundDeclaredShapeFull t1

