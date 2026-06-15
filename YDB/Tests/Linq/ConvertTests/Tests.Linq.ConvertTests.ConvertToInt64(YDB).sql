-- YDB Ydb

SELECT
	p.c1 as c1
FROM
	(
		SELECT
			Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(Math::NearbyInt(Unwrap(CAST(t.MoneyValue AS Double)), Math::RoundToNearest()) AS Text)) AS Decimal(6,2))) AS Double)) AS Int64)) as c1
		FROM
			LinqDataTypes t
	) p
WHERE
	p.c1 > 0l

