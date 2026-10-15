-- YDB Ydb
SELECT
	Unwrap(CAST(CASE
		WHEN Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(p.MoneyValue AS Decimal(6,2))) AS Decimal(6,0))) AS Decimal(6,2))) > Decimal('0', 35, 2) AND Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(p.MoneyValue AS Decimal(6,2))) AS Decimal(6,0))) AS Decimal(6,2))) AS Decimal(35,0))) AS Decimal(35,2))) > Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(p.MoneyValue AS Decimal(6,2))) AS Decimal(6,0))) AS Decimal(6,2)))
			THEN Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(p.MoneyValue AS Decimal(6,2))) AS Decimal(6,0))) AS Decimal(6,2))) AS Decimal(35,0))) - Decimal('1', 35, 0)
		WHEN Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(p.MoneyValue AS Decimal(6,2))) AS Decimal(6,0))) AS Decimal(6,2))) < Decimal('0', 35, 2) AND Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(p.MoneyValue AS Decimal(6,2))) AS Decimal(6,0))) AS Decimal(6,2))) AS Decimal(35,0))) AS Decimal(35,2))) < Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(p.MoneyValue AS Decimal(6,2))) AS Decimal(6,0))) AS Decimal(6,2)))
			THEN Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(p.MoneyValue AS Decimal(6,2))) AS Decimal(6,0))) AS Decimal(6,2))) AS Decimal(35,0))) + Decimal('1', 35, 0)
		ELSE Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(p.MoneyValue AS Decimal(6,2))) AS Decimal(6,0))) AS Decimal(6,2))) AS Decimal(35,0)))
	END AS Uint8)) as c1
FROM
	LinqDataTypes p
WHERE
	Unwrap(CAST(CASE
		WHEN Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(p.MoneyValue AS Decimal(6,2))) AS Decimal(6,0))) AS Decimal(6,2))) > Decimal('0', 35, 2) AND Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(p.MoneyValue AS Decimal(6,2))) AS Decimal(6,0))) AS Decimal(6,2))) AS Decimal(35,0))) AS Decimal(35,2))) > Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(p.MoneyValue AS Decimal(6,2))) AS Decimal(6,0))) AS Decimal(6,2)))
			THEN Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(p.MoneyValue AS Decimal(6,2))) AS Decimal(6,0))) AS Decimal(6,2))) AS Decimal(35,0))) - Decimal('1', 35, 0)
		WHEN Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(p.MoneyValue AS Decimal(6,2))) AS Decimal(6,0))) AS Decimal(6,2))) < Decimal('0', 35, 2) AND Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(p.MoneyValue AS Decimal(6,2))) AS Decimal(6,0))) AS Decimal(6,2))) AS Decimal(35,0))) AS Decimal(35,2))) < Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(p.MoneyValue AS Decimal(6,2))) AS Decimal(6,0))) AS Decimal(6,2)))
			THEN Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(p.MoneyValue AS Decimal(6,2))) AS Decimal(6,0))) AS Decimal(6,2))) AS Decimal(35,0))) + Decimal('1', 35, 0)
		ELSE Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(p.MoneyValue AS Decimal(6,2))) AS Decimal(6,0))) AS Decimal(6,2))) AS Decimal(35,0)))
	END AS Uint8)) > 0ut

