-- YDB Ydb
SELECT
	r.Id as Id,
	Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(Math::NearbyInt(Unwrap(CAST(Unwrap(CAST(r.D AS Decimal(7,2))) * Decimal('10', 7, 2) AS Double)), Math::RoundToNearest()) AS Text)) AS Decimal(7,2))) / Decimal('10', 7, 2) AS Decimal(6,2))) as R,
	Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(Math::NearbyInt(Unwrap(CAST(Unwrap(CAST(r.D AS Decimal(7,2))) * Decimal('10', 7, 2) AS Double)), Math::RoundToNearest()) AS Text)) AS Decimal(7,2))) / Decimal('10', 7, 2) AS Decimal(6,2))) + r.D as Sum_1,
	CASE
		WHEN r.Id > 2 THEN Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(Math::NearbyInt(Unwrap(CAST(Unwrap(CAST(r.D AS Decimal(7,2))) * Decimal('10', 7, 2) AS Double)), Math::RoundToNearest()) AS Text)) AS Decimal(7,2))) / Decimal('10', 7, 2) AS Decimal(6,2)))
		ELSE r.D
	END as Cond
FROM
	RoundNegative r
ORDER BY
	r.Id

