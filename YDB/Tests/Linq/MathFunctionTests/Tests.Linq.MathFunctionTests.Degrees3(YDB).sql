-- YDB Ydb
SELECT
	t.Value_1 as Value_1
FROM
	(
		SELECT
			CAST(Unwrap(CAST(CASE
				WHEN p.MoneyValue > Decimal('0', 35, 2) AND Unwrap(CAST(Unwrap(CAST(p.MoneyValue AS Decimal(35,0))) AS Decimal(35,2))) > p.MoneyValue
					THEN Unwrap(CAST(p.MoneyValue AS Decimal(35,0))) - Decimal('1', 35, 0)
				WHEN p.MoneyValue < Decimal('0', 35, 2) AND Unwrap(CAST(Unwrap(CAST(p.MoneyValue AS Decimal(35,0))) AS Decimal(35,2))) < p.MoneyValue
					THEN Unwrap(CAST(p.MoneyValue AS Decimal(35,0))) + Decimal('1', 35, 0)
				ELSE Unwrap(CAST(p.MoneyValue AS Decimal(35,0)))
			END AS Int32)) AS Double) * 180.0 / Math::Pi() as Value_1
		FROM
			LinqDataTypes p
	) t
WHERE
	Unwrap(CAST(t.Value_1 AS Double)) <> Double('0.10000000000000001')

