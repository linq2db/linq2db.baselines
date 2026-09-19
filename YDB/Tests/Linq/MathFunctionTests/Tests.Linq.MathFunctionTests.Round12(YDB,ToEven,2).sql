-- YDB Ydb
SELECT
	t.c1 as c1
FROM
	(
		SELECT
			Unwrap(CAST(Unwrap(CAST(Math::NearbyInt(Unwrap(CAST(Unwrap(CAST(p.MoneyValue AS Decimal(7,2))) * Decimal('10', 7, 2) AS Double)), Math::RoundToNearest()) AS Text)) AS Decimal(7,2))) / Decimal('10', 7, 2) as c1
		FROM
			LinqDataTypes p
	) t
WHERE
	t.c1 <> Decimal('0', 7, 2) AND t.c1 <> Decimal('7', 7, 2)

