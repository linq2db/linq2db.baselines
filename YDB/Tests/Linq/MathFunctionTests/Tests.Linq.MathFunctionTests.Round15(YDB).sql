-- YDB Ydb
SELECT
	Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(CASE
		WHEN Unwrap(CAST(Unwrap(CAST(p.MoneyValue AS Decimal(11,2))) * Decimal('100000', 11, 2) AS Double)) >= Double('0')
			THEN Math::Round(Unwrap(CAST(Unwrap(CAST(p.MoneyValue AS Decimal(11,2))) * Decimal('100000', 11, 2) AS Double)))
		ELSE -Math::Round(-Unwrap(CAST(Unwrap(CAST(p.MoneyValue AS Decimal(11,2))) * Decimal('100000', 11, 2) AS Double)))
	END AS Text)) AS Decimal(11,2))) / Decimal('100000', 11, 2) AS Decimal(6,2))) + p.MoneyValue as c1
FROM
	LinqDataTypes p
WHERE
	p.MoneyValue <> Decimal('0', 6, 2)

-- YDB Ydb
SELECT
	Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(Math::NearbyInt(Unwrap(CAST(Unwrap(CAST(p.MoneyValue AS Decimal(11,2))) * Decimal('100000', 11, 2) AS Double)), Math::RoundToNearest()) AS Text)) AS Decimal(11,2))) / Decimal('100000', 11, 2) AS Decimal(6,2))) + p.MoneyValue as c1
FROM
	LinqDataTypes p
WHERE
	p.MoneyValue <> Decimal('0', 6, 2)

