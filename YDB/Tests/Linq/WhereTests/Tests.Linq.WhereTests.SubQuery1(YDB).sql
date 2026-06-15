-- YDB Ydb

SELECT
	pp.Value_1 as Value_1
FROM
	(
		SELECT
			Unwrap(CAST(Unwrap(CAST(Math::NearbyInt(Unwrap(CAST(p.MoneyValue * Decimal('100', 6, 2) AS Double)), Math::RoundToNearest()) AS Text)) AS Decimal(6,2))) / Decimal('100', 6, 2) as Value_1
		FROM
			LinqDataTypes p
	) pp
WHERE
	pp.Value_1 <> Decimal('0', 6, 2) AND pp.Value_1 <> Decimal('7', 6, 2)

