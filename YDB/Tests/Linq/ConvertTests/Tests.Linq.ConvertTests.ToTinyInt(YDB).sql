-- YDB Ydb
SELECT
	Unwrap(CAST(CASE
		WHEN t.MoneyValue > Decimal('0', 35, 2) AND Unwrap(CAST(Unwrap(CAST(t.MoneyValue AS Decimal(35,0))) AS Decimal(35,2))) > t.MoneyValue
			THEN Unwrap(CAST(t.MoneyValue AS Decimal(35,0))) - Decimal('1', 35, 0)
		WHEN t.MoneyValue < Decimal('0', 35, 2) AND Unwrap(CAST(Unwrap(CAST(t.MoneyValue AS Decimal(35,0))) AS Decimal(35,2))) < t.MoneyValue
			THEN Unwrap(CAST(t.MoneyValue AS Decimal(35,0))) + Decimal('1', 35, 0)
		ELSE Unwrap(CAST(t.MoneyValue AS Decimal(35,0)))
	END AS Uint8)) as c1
FROM
	LinqDataTypes t

