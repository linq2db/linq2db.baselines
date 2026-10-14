-- YDB Ydb
SELECT
	t.c1 as c1
FROM
	(
		SELECT
			Unwrap(CAST(CASE
				WHEN Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(p.MoneyValue AS Decimal(7,2))) * Decimal('10', 7, 2) AS Decimal(7,0))) AS Decimal(7,2))) - Unwrap(CAST(p.MoneyValue AS Decimal(7,2))) * Decimal('10', 7, 2) = Decimal('-0.5', 7, 2) AND Unwrap(CAST(p.MoneyValue AS Decimal(7,2))) * Decimal('10', 7, 2) > Decimal('0', 7, 2)
					THEN Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(p.MoneyValue AS Decimal(7,2))) * Decimal('10', 7, 2) AS Decimal(7,0))) + Decimal('1', 7, 0) AS Decimal(7,2)))
				WHEN Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(p.MoneyValue AS Decimal(7,2))) * Decimal('10', 7, 2) AS Decimal(7,0))) AS Decimal(7,2))) - Unwrap(CAST(p.MoneyValue AS Decimal(7,2))) * Decimal('10', 7, 2) = Decimal('0.5', 7, 2) AND Unwrap(CAST(p.MoneyValue AS Decimal(7,2))) * Decimal('10', 7, 2) < Decimal('0', 7, 2)
					THEN Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(p.MoneyValue AS Decimal(7,2))) * Decimal('10', 7, 2) AS Decimal(7,0))) - Decimal('1', 7, 0) AS Decimal(7,2)))
				ELSE Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(p.MoneyValue AS Decimal(7,2))) * Decimal('10', 7, 2) AS Decimal(7,0))) AS Decimal(7,2)))
			END / Decimal('10', 7, 2) AS Decimal(6,2))) as c1
		FROM
			LinqDataTypes p
	) t
WHERE
	t.c1 <> Decimal('0', 6, 2)

