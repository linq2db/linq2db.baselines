-- YDB Ydb
SELECT
	Unwrap(CAST(Unwrap(CAST(Math::NearbyInt(Unwrap(CAST(Unwrap(CAST(p.MoneyValue AS Decimal(11,2))) * Decimal('100000', 11, 2) AS Double)), Math::RoundToNearest()) AS Text)) AS Decimal(11,2))) / Decimal('100000', 11, 2) as c1
FROM
	LinqDataTypes p
WHERE
	p.MoneyValue <> Decimal('0', 6, 2)

