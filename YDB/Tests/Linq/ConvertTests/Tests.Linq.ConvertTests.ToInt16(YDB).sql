-- YDB Ydb
SELECT
	p.MoneyValue as MoneyValue
FROM
	LinqDataTypes p
WHERE
	Unwrap(CAST(CASE
		WHEN p.MoneyValue > Decimal('0', 35, 2) AND Unwrap(CAST(Unwrap(CAST(p.MoneyValue AS Decimal(35,0))) AS Decimal(35,2))) > p.MoneyValue
			THEN Unwrap(CAST(p.MoneyValue AS Decimal(35,0))) - Decimal('1', 35, 0)
		WHEN p.MoneyValue < Decimal('0', 35, 2) AND Unwrap(CAST(Unwrap(CAST(p.MoneyValue AS Decimal(35,0))) AS Decimal(35,2))) < p.MoneyValue
			THEN Unwrap(CAST(p.MoneyValue AS Decimal(35,0))) + Decimal('1', 35, 0)
		ELSE Unwrap(CAST(p.MoneyValue AS Decimal(35,0)))
	END AS Int16)) > 0s

