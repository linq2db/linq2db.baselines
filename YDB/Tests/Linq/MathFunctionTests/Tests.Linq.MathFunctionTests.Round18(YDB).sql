-- YDB Ydb
SELECT
	Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(CASE
		WHEN Unwrap(CAST(Unwrap(CAST(r.D AS Decimal(7,3))) * Decimal('0.1', 7, 3) AS Double)) >= Double('0')
			THEN Math::Round(Unwrap(CAST(Unwrap(CAST(r.D AS Decimal(7,3))) * Decimal('0.1', 7, 3) AS Double)))
		ELSE -Math::Round(-Unwrap(CAST(Unwrap(CAST(r.D AS Decimal(7,3))) * Decimal('0.1', 7, 3) AS Double)))
	END AS Text)) AS Decimal(7,3))) / Decimal('0.1', 7, 3) AS Decimal(6,2))) as Away,
	Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(Math::NearbyInt(Unwrap(CAST(Unwrap(CAST(r.D AS Decimal(7,3))) * Decimal('0.1', 7, 3) AS Double)), Math::RoundToNearest()) AS Text)) AS Decimal(7,3))) / Decimal('0.1', 7, 3) AS Decimal(6,2))) as Even
FROM
	RoundNegative r
ORDER BY
	r.Id

