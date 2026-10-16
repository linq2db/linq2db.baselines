-- YDB Ydb
SELECT
	t.c1 as c1
FROM
	(
		SELECT
			CASE
				WHEN Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(p.MoneyValue AS Decimal(6,2))) AS Decimal(6,0))) AS Decimal(6,2))) - Unwrap(CAST(p.MoneyValue AS Decimal(6,2))) = Decimal('-0.5', 6, 2) AND Unwrap(CAST(p.MoneyValue AS Decimal(6,2))) > Decimal('0', 6, 2)
					THEN Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(p.MoneyValue AS Decimal(6,2))) AS Decimal(6,0))) + Decimal('1', 6, 0) AS Decimal(6,2)))
				WHEN Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(p.MoneyValue AS Decimal(6,2))) AS Decimal(6,0))) AS Decimal(6,2))) - Unwrap(CAST(p.MoneyValue AS Decimal(6,2))) = Decimal('0.5', 6, 2) AND Unwrap(CAST(p.MoneyValue AS Decimal(6,2))) < Decimal('0', 6, 2)
					THEN Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(p.MoneyValue AS Decimal(6,2))) AS Decimal(6,0))) - Decimal('1', 6, 0) AS Decimal(6,2)))
				ELSE Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(p.MoneyValue AS Decimal(6,2))) AS Decimal(6,0))) AS Decimal(6,2)))
			END as c1
		FROM
			LinqDataTypes p
	) t
WHERE
	t.c1 <> Decimal('0', 6, 2)

