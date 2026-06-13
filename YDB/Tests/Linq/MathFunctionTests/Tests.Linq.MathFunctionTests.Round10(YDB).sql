-- YDB Ydb

SELECT
	t.c1 as c1
FROM
	(
		SELECT
			Unwrap(CAST(Unwrap(CAST(Math::NearbyInt(Unwrap(CAST(p.MoneyValue * Decimal('10', 6, 2) AS Double)), Math::RoundToNearest()) AS Text)) AS Decimal(6,2))) / Decimal('10', 6, 2) as c1
		FROM
			LinqDataTypes p
	) t
WHERE
	t.c1 <> Decimal('0', 6, 2) AND t.c1 <> Decimal('7', 6, 2)

