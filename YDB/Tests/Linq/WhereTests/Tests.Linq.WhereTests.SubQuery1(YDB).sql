-- YDB Ydb
SELECT
	pp.Value_1 as Value_1
FROM
	(
		SELECT
			Unwrap(CAST(Unwrap(CAST(Math::NearbyInt(Unwrap(CAST(Unwrap(CAST(p.MoneyValue AS Decimal(8,2))) * Decimal('100', 8, 2) AS Double)), Math::RoundToNearest()) AS Text)) AS Decimal(8,2))) / Decimal('100', 8, 2) as Value_1
		FROM
			LinqDataTypes p
	) pp
WHERE
	pp.Value_1 <> Decimal('0', 8, 2) AND pp.Value_1 <> Decimal('7', 8, 2)

