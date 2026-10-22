-- YDB Ydb
SELECT
	Unwrap(CAST(CASE
		WHEN Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(p.MoneyValue AS Decimal(6,2))) AS Decimal(6,0))) AS Decimal(6,2))) > Decimal('0', 35, 1) AND Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(p.MoneyValue AS Decimal(6,2))) AS Decimal(6,0))) AS Decimal(6,2))) AS Decimal(35,1))) AS Decimal(35,0))) AS Decimal(35,1))) > Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(p.MoneyValue AS Decimal(6,2))) AS Decimal(6,0))) AS Decimal(6,2)))
			THEN Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(p.MoneyValue AS Decimal(6,2))) AS Decimal(6,0))) AS Decimal(6,2))) AS Decimal(35,1))) AS Decimal(35,0))) - Decimal('1', 35, 0)
		WHEN Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(p.MoneyValue AS Decimal(6,2))) AS Decimal(6,0))) AS Decimal(6,2))) < Decimal('0', 35, 1) AND Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(p.MoneyValue AS Decimal(6,2))) AS Decimal(6,0))) AS Decimal(6,2))) AS Decimal(35,1))) AS Decimal(35,0))) AS Decimal(35,1))) < Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(p.MoneyValue AS Decimal(6,2))) AS Decimal(6,0))) AS Decimal(6,2)))
			THEN Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(p.MoneyValue AS Decimal(6,2))) AS Decimal(6,0))) AS Decimal(6,2))) AS Decimal(35,1))) AS Decimal(35,0))) + Decimal('1', 35, 0)
		ELSE Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(p.MoneyValue AS Decimal(6,2))) AS Decimal(6,0))) AS Decimal(6,2))) AS Decimal(35,1))) AS Decimal(35,0)))
	END AS Int32)) as c1
FROM
	LinqDataTypes p
WHERE
	Unwrap(CAST(CASE
		WHEN Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(p.MoneyValue AS Decimal(6,2))) AS Decimal(6,0))) AS Decimal(6,2))) > Decimal('0', 35, 1) AND Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(p.MoneyValue AS Decimal(6,2))) AS Decimal(6,0))) AS Decimal(6,2))) AS Decimal(35,1))) AS Decimal(35,0))) AS Decimal(35,1))) > Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(p.MoneyValue AS Decimal(6,2))) AS Decimal(6,0))) AS Decimal(6,2)))
			THEN Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(p.MoneyValue AS Decimal(6,2))) AS Decimal(6,0))) AS Decimal(6,2))) AS Decimal(35,1))) AS Decimal(35,0))) - Decimal('1', 35, 0)
		WHEN Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(p.MoneyValue AS Decimal(6,2))) AS Decimal(6,0))) AS Decimal(6,2))) < Decimal('0', 35, 1) AND Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(p.MoneyValue AS Decimal(6,2))) AS Decimal(6,0))) AS Decimal(6,2))) AS Decimal(35,1))) AS Decimal(35,0))) AS Decimal(35,1))) < Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(p.MoneyValue AS Decimal(6,2))) AS Decimal(6,0))) AS Decimal(6,2)))
			THEN Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(p.MoneyValue AS Decimal(6,2))) AS Decimal(6,0))) AS Decimal(6,2))) AS Decimal(35,1))) AS Decimal(35,0))) + Decimal('1', 35, 0)
		ELSE Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(p.MoneyValue AS Decimal(6,2))) AS Decimal(6,0))) AS Decimal(6,2))) AS Decimal(35,1))) AS Decimal(35,0)))
	END AS Int32)) > 0

