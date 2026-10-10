-- YDB Ydb
SELECT
	Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(Math::NearbyInt(Unwrap(CAST(Unwrap(CAST(p.MoneyValue AS Decimal(35,2))) * Unwrap(CAST(Unwrap(CAST(Math::Pow(Double('10'), Unwrap(CAST(p.ID % 2 + 2 AS Double))) AS Text)) AS Decimal(35,2))) AS Double)), Math::RoundToNearest()) AS Text)) AS Decimal(35,2))) / Unwrap(CAST(Unwrap(CAST(Math::Pow(Double('10'), Unwrap(CAST(p.ID % 2 + 2 AS Double))) AS Text)) AS Decimal(35,2))) AS Decimal(6,2))) as c1
FROM
	LinqDataTypes p
WHERE
	p.MoneyValue <> Decimal('0', 6, 2)

-- YDB Ydb
SELECT
	Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(Math::NearbyInt(Unwrap(CAST(Unwrap(CAST(p.MoneyValue AS Decimal(35,2))) * Unwrap(CAST(Unwrap(CAST(Math::Pow(Double('10'), Unwrap(CAST(p.ID % 2 + 1 AS Double))) AS Text)) AS Decimal(35,2))) AS Double)), Math::RoundToNearest()) AS Text)) AS Decimal(35,2))) / Unwrap(CAST(Unwrap(CAST(Math::Pow(Double('10'), Unwrap(CAST(p.ID % 2 + 1 AS Double))) AS Text)) AS Decimal(35,2))) AS Decimal(6,2))) as c1
FROM
	LinqDataTypes p
WHERE
	p.MoneyValue <> Decimal('0', 6, 2)

