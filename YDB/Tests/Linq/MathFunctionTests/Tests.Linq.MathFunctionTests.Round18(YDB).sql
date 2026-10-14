-- YDB Ydb
SELECT
	Unwrap(CAST(CASE
		WHEN Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(r.D AS Decimal(7,3))) * Decimal('0.1', 7, 3) AS Decimal(7,0))) AS Decimal(7,3))) - Unwrap(CAST(r.D AS Decimal(7,3))) * Decimal('0.1', 7, 3) = Decimal('-0.5', 7, 3) AND Unwrap(CAST(r.D AS Decimal(7,3))) * Decimal('0.1', 7, 3) > Decimal('0', 7, 3)
			THEN Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(r.D AS Decimal(7,3))) * Decimal('0.1', 7, 3) AS Decimal(7,0))) + Decimal('1', 7, 0) AS Decimal(7,3)))
		WHEN Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(r.D AS Decimal(7,3))) * Decimal('0.1', 7, 3) AS Decimal(7,0))) AS Decimal(7,3))) - Unwrap(CAST(r.D AS Decimal(7,3))) * Decimal('0.1', 7, 3) = Decimal('0.5', 7, 3) AND Unwrap(CAST(r.D AS Decimal(7,3))) * Decimal('0.1', 7, 3) < Decimal('0', 7, 3)
			THEN Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(r.D AS Decimal(7,3))) * Decimal('0.1', 7, 3) AS Decimal(7,0))) - Decimal('1', 7, 0) AS Decimal(7,3)))
		ELSE Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(r.D AS Decimal(7,3))) * Decimal('0.1', 7, 3) AS Decimal(7,0))) AS Decimal(7,3)))
	END / Decimal('0.1', 7, 3) AS Decimal(6,2))) as Away,
	Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(r.D AS Decimal(7,3))) * Decimal('0.1', 7, 3) AS Decimal(7,0))) AS Decimal(7,3))) / Decimal('0.1', 7, 3) AS Decimal(6,2))) as Even
FROM
	RoundNegative r
ORDER BY
	r.Id

