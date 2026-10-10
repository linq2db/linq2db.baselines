-- YDB Ydb
SELECT
	Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(CASE
		WHEN Unwrap(CAST(Unwrap(CAST(r.D AS Decimal(35,5))) * Decimal('0.001', 35, 5) AS Double)) >= Double('0')
			THEN Math::Round(Unwrap(CAST(Unwrap(CAST(r.D AS Decimal(35,5))) * Decimal('0.001', 35, 5) AS Double)))
		ELSE -Math::Round(-Unwrap(CAST(Unwrap(CAST(r.D AS Decimal(35,5))) * Decimal('0.001', 35, 5) AS Double)))
	END AS Text)) AS Decimal(35,5))) / Decimal('0.001', 35, 5) AS Decimal(35,2))) as Away,
	Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(Math::NearbyInt(Unwrap(CAST(Unwrap(CAST(r.D AS Decimal(35,5))) * Decimal('0.001', 35, 5) AS Double)), Math::RoundToNearest()) AS Text)) AS Decimal(35,5))) / Decimal('0.001', 35, 5) AS Decimal(35,2))) as Even
FROM
	RoundNegativeNearLimit r
ORDER BY
	r.Id

