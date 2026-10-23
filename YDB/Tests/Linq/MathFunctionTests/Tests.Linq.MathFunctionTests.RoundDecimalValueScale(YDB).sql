-- YDB Ydb
SELECT
	Unwrap(CAST(Unwrap(CAST(CASE
		WHEN Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(Decimal('1.00005', 6, 5) AS Decimal(10,5))) * Decimal('10000', 10, 5) AS Decimal(10,0))) AS Decimal(10,5))) - Unwrap(CAST(Decimal('1.00005', 6, 5) AS Decimal(10,5))) * Decimal('10000', 10, 5) = Decimal('-0.5', 10, 5) AND Unwrap(CAST(Decimal('1.00005', 6, 5) AS Decimal(10,5))) * Decimal('10000', 10, 5) > Decimal('0', 10, 5)
			THEN Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(Decimal('1.00005', 6, 5) AS Decimal(10,5))) * Decimal('10000', 10, 5) AS Decimal(10,0))) + Decimal('1', 10, 0) AS Decimal(10,5)))
		WHEN Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(Decimal('1.00005', 6, 5) AS Decimal(10,5))) * Decimal('10000', 10, 5) AS Decimal(10,0))) AS Decimal(10,5))) - Unwrap(CAST(Decimal('1.00005', 6, 5) AS Decimal(10,5))) * Decimal('10000', 10, 5) = Decimal('0.5', 10, 5) AND Unwrap(CAST(Decimal('1.00005', 6, 5) AS Decimal(10,5))) * Decimal('10000', 10, 5) < Decimal('0', 10, 5)
			THEN Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(Decimal('1.00005', 6, 5) AS Decimal(10,5))) * Decimal('10000', 10, 5) AS Decimal(10,0))) - Decimal('1', 10, 0) AS Decimal(10,5)))
		ELSE Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(Decimal('1.00005', 6, 5) AS Decimal(10,5))) * Decimal('10000', 10, 5) AS Decimal(10,0))) AS Decimal(10,5)))
	END / Decimal('10000', 10, 5) AS Decimal(6,5))) AS Decimal(18,4))) + r.D as Away,
	Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(Decimal('1.00051', 6, 5) AS Decimal(9,5))) * Decimal('1000', 9, 5) AS Decimal(9,0))) AS Decimal(9,5))) / Decimal('1000', 9, 5) AS Decimal(6,5))) AS Decimal(18,4))) + r.D as Even
FROM
	RoundValueScale r
LIMIT 2

