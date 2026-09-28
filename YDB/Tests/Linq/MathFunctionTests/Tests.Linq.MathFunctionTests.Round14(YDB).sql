-- YDB Ydb
SELECT
	Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(Math::NearbyInt(Unwrap(CAST(Unwrap(CAST(p.MoneyValue AS Decimal(11,2))) * Decimal('100000', 11, 2) AS Double)), Math::RoundToNearest()) AS Text)) AS Decimal(11,2))) / Decimal('100000', 11, 2) AS Decimal(6,2))) + p.MoneyValue as c1
FROM
	LinqDataTypes p
WHERE
	p.MoneyValue <> Decimal('0', 6, 2)

-- YDB Ydb
SELECT
	CASE
		WHEN p.ID > 2 THEN Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(Math::NearbyInt(Unwrap(CAST(Unwrap(CAST(p.MoneyValue AS Decimal(11,2))) * Decimal('100000', 11, 2) AS Double)), Math::RoundToNearest()) AS Text)) AS Decimal(11,2))) / Decimal('100000', 11, 2) AS Decimal(6,2)))
		ELSE p.MoneyValue
	END as c1
FROM
	LinqDataTypes p
WHERE
	p.MoneyValue <> Decimal('0', 6, 2)

