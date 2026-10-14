-- YDB Ydb
SELECT
	Unwrap(CAST(CASE
		WHEN Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(r.D AS Decimal(35,5))) * Decimal('0.001', 35, 5) AS Decimal(35,0))) AS Decimal(35,5))) - Unwrap(CAST(r.D AS Decimal(35,5))) * Decimal('0.001', 35, 5) = Decimal('-0.5', 35, 5) AND Unwrap(CAST(r.D AS Decimal(35,5))) * Decimal('0.001', 35, 5) > Decimal('0', 35, 5)
			THEN Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(r.D AS Decimal(35,5))) * Decimal('0.001', 35, 5) AS Decimal(35,0))) + Decimal('1', 35, 0) AS Decimal(35,5)))
		WHEN Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(r.D AS Decimal(35,5))) * Decimal('0.001', 35, 5) AS Decimal(35,0))) AS Decimal(35,5))) - Unwrap(CAST(r.D AS Decimal(35,5))) * Decimal('0.001', 35, 5) = Decimal('0.5', 35, 5) AND Unwrap(CAST(r.D AS Decimal(35,5))) * Decimal('0.001', 35, 5) < Decimal('0', 35, 5)
			THEN Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(r.D AS Decimal(35,5))) * Decimal('0.001', 35, 5) AS Decimal(35,0))) - Decimal('1', 35, 0) AS Decimal(35,5)))
		ELSE Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(r.D AS Decimal(35,5))) * Decimal('0.001', 35, 5) AS Decimal(35,0))) AS Decimal(35,5)))
	END / Decimal('0.001', 35, 5) AS Decimal(35,2))) as Away,
	Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(r.D AS Decimal(35,5))) * Decimal('0.001', 35, 5) AS Decimal(35,0))) AS Decimal(35,5))) / Decimal('0.001', 35, 5) AS Decimal(35,2))) as Even
FROM
	RoundNegativeNearLimit r
ORDER BY
	r.Id

