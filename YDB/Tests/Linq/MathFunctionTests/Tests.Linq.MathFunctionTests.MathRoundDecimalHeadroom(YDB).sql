-- YDB Ydb
SELECT
	r.Id as Id,
	Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(r.D AS Decimal(18,1))) AS Decimal(18,0))) AS Decimal(18,1))) as ToEven,
	Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(r.D AS Decimal(18,1))) AS Decimal(18,0))) AS Decimal(18,1))) as SqlToEven,
	CASE
		WHEN Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(r.D AS Decimal(18,1))) AS Decimal(18,0))) AS Decimal(18,1))) - Unwrap(CAST(r.D AS Decimal(18,1))) = Decimal('-0.5', 18, 1) AND Unwrap(CAST(r.D AS Decimal(18,1))) > Decimal('0', 18, 1)
			THEN Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(r.D AS Decimal(18,1))) AS Decimal(18,0))) + Decimal('1', 18, 0) AS Decimal(18,1)))
		WHEN Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(r.D AS Decimal(18,1))) AS Decimal(18,0))) AS Decimal(18,1))) - Unwrap(CAST(r.D AS Decimal(18,1))) = Decimal('0.5', 18, 1) AND Unwrap(CAST(r.D AS Decimal(18,1))) < Decimal('0', 18, 1)
			THEN Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(r.D AS Decimal(18,1))) AS Decimal(18,0))) - Decimal('1', 18, 0) AS Decimal(18,1)))
		ELSE Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(r.D AS Decimal(18,1))) AS Decimal(18,0))) AS Decimal(18,1)))
	END as Away
FROM
	HeadroomValues r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	t1.Id as Id,
	t1.D as D
FROM
	HeadroomValues t1

