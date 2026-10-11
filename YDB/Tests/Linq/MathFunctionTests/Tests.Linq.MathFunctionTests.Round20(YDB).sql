-- YDB Ydb
SELECT
	CASE
		WHEN r.P >= 0 THEN Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(CASE
			WHEN Unwrap(CAST(Unwrap(CAST(r.D AS Decimal(8,2))) * Unwrap(CAST(Unwrap(CAST(Math::Pow(Double('10'), Unwrap(CAST(CASE
				WHEN r.P > 2 THEN 2
				ELSE r.P
			END AS Double))) AS Text)) AS Decimal(8,2))) AS Double)) >= Double('0')
				THEN Math::Round(Unwrap(CAST(Unwrap(CAST(r.D AS Decimal(8,2))) * Unwrap(CAST(Unwrap(CAST(Math::Pow(Double('10'), Unwrap(CAST(CASE
				WHEN r.P > 2 THEN 2
				ELSE r.P
			END AS Double))) AS Text)) AS Decimal(8,2))) AS Double)))
			ELSE -Math::Round(-Unwrap(CAST(Unwrap(CAST(r.D AS Decimal(8,2))) * Unwrap(CAST(Unwrap(CAST(Math::Pow(Double('10'), Unwrap(CAST(CASE
				WHEN r.P > 2 THEN 2
				ELSE r.P
			END AS Double))) AS Text)) AS Decimal(8,2))) AS Double)))
		END AS Text)) AS Decimal(8,2))) / Unwrap(CAST(Unwrap(CAST(Math::Pow(Double('10'), Unwrap(CAST(CASE
			WHEN r.P > 2 THEN 2
			ELSE r.P
		END AS Double))) AS Text)) AS Decimal(8,2))) AS Decimal(6,2)))
		ELSE Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(CASE
			WHEN Unwrap(CAST(Unwrap(CAST(r.D AS Decimal(35,31))) * Unwrap(CAST(Unwrap(CAST(Math::Pow(Double('10'), Unwrap(CAST(Ensure(r.P, r.P >= -29, 'ROUND precision is out of range for Decimal(6,2)'u) AS Double))) AS Text)) AS Decimal(35,31))) AS Double)) >= Double('0')
				THEN Math::Round(Unwrap(CAST(Unwrap(CAST(r.D AS Decimal(35,31))) * Unwrap(CAST(Unwrap(CAST(Math::Pow(Double('10'), Unwrap(CAST(Ensure(r.P, r.P >= -29, 'ROUND precision is out of range for Decimal(6,2)'u) AS Double))) AS Text)) AS Decimal(35,31))) AS Double)))
			ELSE -Math::Round(-Unwrap(CAST(Unwrap(CAST(r.D AS Decimal(35,31))) * Unwrap(CAST(Unwrap(CAST(Math::Pow(Double('10'), Unwrap(CAST(Ensure(r.P, r.P >= -29, 'ROUND precision is out of range for Decimal(6,2)'u) AS Double))) AS Text)) AS Decimal(35,31))) AS Double)))
		END AS Text)) AS Decimal(35,31))) / Unwrap(CAST(Unwrap(CAST(Math::Pow(Double('10'), Unwrap(CAST(Ensure(r.P, r.P >= -29, 'ROUND precision is out of range for Decimal(6,2)'u) AS Double))) AS Text)) AS Decimal(35,31))) AS Decimal(6,2)))
	END as Away,
	CASE
		WHEN r.P >= 0 THEN Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(Math::NearbyInt(Unwrap(CAST(Unwrap(CAST(r.D AS Decimal(8,2))) * Unwrap(CAST(Unwrap(CAST(Math::Pow(Double('10'), Unwrap(CAST(CASE
			WHEN r.P > 2 THEN 2
			ELSE r.P
		END AS Double))) AS Text)) AS Decimal(8,2))) AS Double)), Math::RoundToNearest()) AS Text)) AS Decimal(8,2))) / Unwrap(CAST(Unwrap(CAST(Math::Pow(Double('10'), Unwrap(CAST(CASE
			WHEN r.P > 2 THEN 2
			ELSE r.P
		END AS Double))) AS Text)) AS Decimal(8,2))) AS Decimal(6,2)))
		ELSE Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(Math::NearbyInt(Unwrap(CAST(Unwrap(CAST(r.D AS Decimal(35,31))) * Unwrap(CAST(Unwrap(CAST(Math::Pow(Double('10'), Unwrap(CAST(Ensure(r.P, r.P >= -29, 'ROUND precision is out of range for Decimal(6,2)'u) AS Double))) AS Text)) AS Decimal(35,31))) AS Double)), Math::RoundToNearest()) AS Text)) AS Decimal(35,31))) / Unwrap(CAST(Unwrap(CAST(Math::Pow(Double('10'), Unwrap(CAST(Ensure(r.P, r.P >= -29, 'ROUND precision is out of range for Decimal(6,2)'u) AS Double))) AS Text)) AS Decimal(35,31))) AS Decimal(6,2)))
	END as Even
FROM
	RoundNegativeDynamic r
ORDER BY
	r.Id

