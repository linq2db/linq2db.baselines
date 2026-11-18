-- YDB Ydb
SELECT
	Unwrap(CAST(CASE
		WHEN t.MoneyValue > Decimal('0', 35, 1) AND Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(t.MoneyValue AS Decimal(35,1))) AS Decimal(35,0))) AS Decimal(35,1))) > t.MoneyValue
			THEN Unwrap(CAST(Unwrap(CAST(t.MoneyValue AS Decimal(35,1))) AS Decimal(35,0))) - Decimal('1', 35, 0)
		WHEN t.MoneyValue < Decimal('0', 35, 1) AND Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(t.MoneyValue AS Decimal(35,1))) AS Decimal(35,0))) AS Decimal(35,1))) < t.MoneyValue
			THEN Unwrap(CAST(Unwrap(CAST(t.MoneyValue AS Decimal(35,1))) AS Decimal(35,0))) + Decimal('1', 35, 0)
		ELSE Unwrap(CAST(Unwrap(CAST(t.MoneyValue AS Decimal(35,1))) AS Decimal(35,0)))
	END AS Int64)) as c1
FROM
	LinqDataTypes t

