-- YDB Ydb
SELECT
	Unwrap(CAST(CASE
		WHEN Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(r.B AS Decimal(35,20))) * Decimal('100', 35, 20) AS Decimal(35,0))) AS Decimal(35,20))) - Unwrap(CAST(r.B AS Decimal(35,20))) * Decimal('100', 35, 20) = Decimal('-0.5', 35, 20) AND Unwrap(CAST(r.B AS Decimal(35,20))) * Decimal('100', 35, 20) > Decimal('0', 35, 20)
			THEN Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(r.B AS Decimal(35,20))) * Decimal('100', 35, 20) AS Decimal(35,0))) + Decimal('1', 35, 0) AS Decimal(35,20)))
		WHEN Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(r.B AS Decimal(35,20))) * Decimal('100', 35, 20) AS Decimal(35,0))) AS Decimal(35,20))) - Unwrap(CAST(r.B AS Decimal(35,20))) * Decimal('100', 35, 20) = Decimal('0.5', 35, 20) AND Unwrap(CAST(r.B AS Decimal(35,20))) * Decimal('100', 35, 20) < Decimal('0', 35, 20)
			THEN Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(r.B AS Decimal(35,20))) * Decimal('100', 35, 20) AS Decimal(35,0))) - Decimal('1', 35, 0) AS Decimal(35,20)))
		ELSE Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(r.B AS Decimal(35,20))) * Decimal('100', 35, 20) AS Decimal(35,0))) AS Decimal(35,20)))
	END / Decimal('100', 35, 20) AS Decimal(22,9))) as c1
FROM
	RoundDeclaredShapeFull r
ORDER BY
	r.Id

