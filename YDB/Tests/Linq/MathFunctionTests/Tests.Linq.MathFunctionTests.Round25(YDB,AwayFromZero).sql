-- YDB Ydb
SELECT
	r.D as D
FROM
	RoundScaffoldedDbType r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	Unwrap(CAST(CASE
		WHEN Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(r.D AS Decimal(7,2))) * Decimal('10', 7, 2) AS Decimal(7,0))) AS Decimal(7,2))) - Unwrap(CAST(r.D AS Decimal(7,2))) * Decimal('10', 7, 2) = Decimal('-0.5', 7, 2) AND Unwrap(CAST(r.D AS Decimal(7,2))) * Decimal('10', 7, 2) > Decimal('0', 7, 2)
			THEN Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(r.D AS Decimal(7,2))) * Decimal('10', 7, 2) AS Decimal(7,0))) + Decimal('1', 7, 0) AS Decimal(7,2)))
		WHEN Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(r.D AS Decimal(7,2))) * Decimal('10', 7, 2) AS Decimal(7,0))) AS Decimal(7,2))) - Unwrap(CAST(r.D AS Decimal(7,2))) * Decimal('10', 7, 2) = Decimal('0.5', 7, 2) AND Unwrap(CAST(r.D AS Decimal(7,2))) * Decimal('10', 7, 2) < Decimal('0', 7, 2)
			THEN Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(r.D AS Decimal(7,2))) * Decimal('10', 7, 2) AS Decimal(7,0))) - Decimal('1', 7, 0) AS Decimal(7,2)))
		ELSE Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(r.D AS Decimal(7,2))) * Decimal('10', 7, 2) AS Decimal(7,0))) AS Decimal(7,2)))
	END / Decimal('10', 7, 2) AS Decimal(6, 2))) as c1
FROM
	RoundScaffoldedDbType r
ORDER BY
	r.Id

