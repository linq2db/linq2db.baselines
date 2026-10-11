-- YDB Ydb
SELECT
	CASE
		WHEN r.P >= 0 THEN Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(CASE
			WHEN Unwrap(CAST(Unwrap(CAST(r.D AS Decimal(9,4))) * Unwrap(CAST(Unwrap(CAST(Math::Pow(Double('10'), Unwrap(CAST(CASE
				WHEN r.P > 4 THEN 4
				ELSE r.P
			END AS Double))) AS Text)) AS Decimal(9,4))) AS Double)) >= Double('0')
				THEN Math::Round(Unwrap(CAST(Unwrap(CAST(r.D AS Decimal(9,4))) * Unwrap(CAST(Unwrap(CAST(Math::Pow(Double('10'), Unwrap(CAST(CASE
				WHEN r.P > 4 THEN 4
				ELSE r.P
			END AS Double))) AS Text)) AS Decimal(9,4))) AS Double)))
			ELSE -Math::Round(-Unwrap(CAST(Unwrap(CAST(r.D AS Decimal(9,4))) * Unwrap(CAST(Unwrap(CAST(Math::Pow(Double('10'), Unwrap(CAST(CASE
				WHEN r.P > 4 THEN 4
				ELSE r.P
			END AS Double))) AS Text)) AS Decimal(9,4))) AS Double)))
		END AS Text)) AS Decimal(9,4))) / Unwrap(CAST(Unwrap(CAST(Math::Pow(Double('10'), Unwrap(CAST(CASE
			WHEN r.P > 4 THEN 4
			ELSE r.P
		END AS Double))) AS Text)) AS Decimal(9,4))) AS Decimal(4,4)))
		ELSE Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(CASE
			WHEN Unwrap(CAST(Unwrap(CAST(r.D AS Decimal(35,35))) * Unwrap(CAST(Unwrap(CAST(Math::Pow(Double('10'), Unwrap(CAST(Ensure(r.P, r.P >= -31, 'ROUND precision is out of range for Decimal(4,4)'u) AS Double))) AS Text)) AS Decimal(35,35))) AS Double)) >= Double('0')
				THEN Math::Round(Unwrap(CAST(Unwrap(CAST(r.D AS Decimal(35,35))) * Unwrap(CAST(Unwrap(CAST(Math::Pow(Double('10'), Unwrap(CAST(Ensure(r.P, r.P >= -31, 'ROUND precision is out of range for Decimal(4,4)'u) AS Double))) AS Text)) AS Decimal(35,35))) AS Double)))
			ELSE -Math::Round(-Unwrap(CAST(Unwrap(CAST(r.D AS Decimal(35,35))) * Unwrap(CAST(Unwrap(CAST(Math::Pow(Double('10'), Unwrap(CAST(Ensure(r.P, r.P >= -31, 'ROUND precision is out of range for Decimal(4,4)'u) AS Double))) AS Text)) AS Decimal(35,35))) AS Double)))
		END AS Text)) AS Decimal(35,35))) / Unwrap(CAST(Unwrap(CAST(Math::Pow(Double('10'), Unwrap(CAST(Ensure(r.P, r.P >= -31, 'ROUND precision is out of range for Decimal(4,4)'u) AS Double))) AS Text)) AS Decimal(35,35))) AS Decimal(4,4)))
	END as Away,
	CASE
		WHEN r.P >= 0 THEN Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(Math::NearbyInt(Unwrap(CAST(Unwrap(CAST(r.D AS Decimal(9,4))) * Unwrap(CAST(Unwrap(CAST(Math::Pow(Double('10'), Unwrap(CAST(CASE
			WHEN r.P > 4 THEN 4
			ELSE r.P
		END AS Double))) AS Text)) AS Decimal(9,4))) AS Double)), Math::RoundToNearest()) AS Text)) AS Decimal(9,4))) / Unwrap(CAST(Unwrap(CAST(Math::Pow(Double('10'), Unwrap(CAST(CASE
			WHEN r.P > 4 THEN 4
			ELSE r.P
		END AS Double))) AS Text)) AS Decimal(9,4))) AS Decimal(4,4)))
		ELSE Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(Math::NearbyInt(Unwrap(CAST(Unwrap(CAST(r.D AS Decimal(35,35))) * Unwrap(CAST(Unwrap(CAST(Math::Pow(Double('10'), Unwrap(CAST(Ensure(r.P, r.P >= -31, 'ROUND precision is out of range for Decimal(4,4)'u) AS Double))) AS Text)) AS Decimal(35,35))) AS Double)), Math::RoundToNearest()) AS Text)) AS Decimal(35,35))) / Unwrap(CAST(Unwrap(CAST(Math::Pow(Double('10'), Unwrap(CAST(Ensure(r.P, r.P >= -31, 'ROUND precision is out of range for Decimal(4,4)'u) AS Double))) AS Text)) AS Decimal(35,35))) AS Decimal(4,4)))
	END as Even
FROM
	RoundDynamicNoIntegerDigits r
ORDER BY
	r.Id

