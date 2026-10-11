-- YDB Ydb
SELECT
	CASE
		WHEN r.P >= 0 THEN Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(CASE
			WHEN Unwrap(CAST(Unwrap(CAST(r.D22s9 AS Decimal(31,9))) * Unwrap(CAST(Unwrap(CAST(Math::Pow(Double('10'), Unwrap(CAST(CASE
				WHEN r.P > 9 THEN 9
				ELSE r.P
			END AS Double))) AS Text)) AS Decimal(31,9))) AS Double)) >= Double('0')
				THEN Math::Round(Unwrap(CAST(Unwrap(CAST(r.D22s9 AS Decimal(31,9))) * Unwrap(CAST(Unwrap(CAST(Math::Pow(Double('10'), Unwrap(CAST(CASE
				WHEN r.P > 9 THEN 9
				ELSE r.P
			END AS Double))) AS Text)) AS Decimal(31,9))) AS Double)))
			ELSE -Math::Round(-Unwrap(CAST(Unwrap(CAST(r.D22s9 AS Decimal(31,9))) * Unwrap(CAST(Unwrap(CAST(Math::Pow(Double('10'), Unwrap(CAST(CASE
				WHEN r.P > 9 THEN 9
				ELSE r.P
			END AS Double))) AS Text)) AS Decimal(31,9))) AS Double)))
		END AS Text)) AS Decimal(31,9))) / Unwrap(CAST(Unwrap(CAST(Math::Pow(Double('10'), Unwrap(CAST(CASE
			WHEN r.P > 9 THEN 9
			ELSE r.P
		END AS Double))) AS Text)) AS Decimal(31,9))) AS Decimal(22,9)))
		ELSE Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(CASE
			WHEN Unwrap(CAST(Unwrap(CAST(r.D22s9 AS Decimal(35,22))) * Unwrap(CAST(Unwrap(CAST(Math::Pow(Double('10'), Unwrap(CAST(Ensure(r.P, r.P >= -13, 'ROUND precision is out of range for Decimal(22,9)'u) AS Double))) AS Text)) AS Decimal(35,22))) AS Double)) >= Double('0')
				THEN Math::Round(Unwrap(CAST(Unwrap(CAST(r.D22s9 AS Decimal(35,22))) * Unwrap(CAST(Unwrap(CAST(Math::Pow(Double('10'), Unwrap(CAST(Ensure(r.P, r.P >= -13, 'ROUND precision is out of range for Decimal(22,9)'u) AS Double))) AS Text)) AS Decimal(35,22))) AS Double)))
			ELSE -Math::Round(-Unwrap(CAST(Unwrap(CAST(r.D22s9 AS Decimal(35,22))) * Unwrap(CAST(Unwrap(CAST(Math::Pow(Double('10'), Unwrap(CAST(Ensure(r.P, r.P >= -13, 'ROUND precision is out of range for Decimal(22,9)'u) AS Double))) AS Text)) AS Decimal(35,22))) AS Double)))
		END AS Text)) AS Decimal(35,22))) / Unwrap(CAST(Unwrap(CAST(Math::Pow(Double('10'), Unwrap(CAST(Ensure(r.P, r.P >= -13, 'ROUND precision is out of range for Decimal(22,9)'u) AS Double))) AS Text)) AS Decimal(35,22))) AS Decimal(22,9)))
	END as Away,
	CASE
		WHEN r.P >= 0 THEN Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(Math::NearbyInt(Unwrap(CAST(Unwrap(CAST(r.D22s9 AS Decimal(31,9))) * Unwrap(CAST(Unwrap(CAST(Math::Pow(Double('10'), Unwrap(CAST(CASE
			WHEN r.P > 9 THEN 9
			ELSE r.P
		END AS Double))) AS Text)) AS Decimal(31,9))) AS Double)), Math::RoundToNearest()) AS Text)) AS Decimal(31,9))) / Unwrap(CAST(Unwrap(CAST(Math::Pow(Double('10'), Unwrap(CAST(CASE
			WHEN r.P > 9 THEN 9
			ELSE r.P
		END AS Double))) AS Text)) AS Decimal(31,9))) AS Decimal(22,9)))
		ELSE Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(Math::NearbyInt(Unwrap(CAST(Unwrap(CAST(r.D22s9 AS Decimal(35,22))) * Unwrap(CAST(Unwrap(CAST(Math::Pow(Double('10'), Unwrap(CAST(Ensure(r.P, r.P >= -13, 'ROUND precision is out of range for Decimal(22,9)'u) AS Double))) AS Text)) AS Decimal(35,22))) AS Double)), Math::RoundToNearest()) AS Text)) AS Decimal(35,22))) / Unwrap(CAST(Unwrap(CAST(Math::Pow(Double('10'), Unwrap(CAST(Ensure(r.P, r.P >= -13, 'ROUND precision is out of range for Decimal(22,9)'u) AS Double))) AS Text)) AS Decimal(35,22))) AS Decimal(22,9)))
	END as Even
FROM
	RoundNegativeDynamicWide r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	CASE
		WHEN r.P >= 0 AND r.Id <= 0 THEN CAST(CAST(CAST(CASE
			WHEN CAST(Unwrap(CAST(r.D22s9 AS Decimal(31,9))) * CAST(CAST(Math::Pow(Double('10'), CAST(CASE
				WHEN r.P > 9 AND r.Id <= 0 THEN 9
				WHEN r.Id > 0 THEN NULL
				ELSE r.P
			END AS Double)) AS Text) AS Decimal(31,9)) AS Double) >= Double('0')
				THEN Math::Round(CAST(Unwrap(CAST(r.D22s9 AS Decimal(31,9))) * CAST(CAST(Math::Pow(Double('10'), CAST(CASE
				WHEN r.P > 9 AND r.Id <= 0 THEN 9
				WHEN r.Id > 0 THEN NULL
				ELSE r.P
			END AS Double)) AS Text) AS Decimal(31,9)) AS Double))
			ELSE -Math::Round(-CAST(Unwrap(CAST(r.D22s9 AS Decimal(31,9))) * CAST(CAST(Math::Pow(Double('10'), CAST(CASE
				WHEN r.P > 9 AND r.Id <= 0 THEN 9
				WHEN r.Id > 0 THEN NULL
				ELSE r.P
			END AS Double)) AS Text) AS Decimal(31,9)) AS Double))
		END AS Text) AS Decimal(31,9)) / CAST(CAST(Math::Pow(Double('10'), CAST(CASE
			WHEN r.P > 9 AND r.Id <= 0 THEN 9
			WHEN r.Id > 0 THEN NULL
			ELSE r.P
		END AS Double)) AS Text) AS Decimal(31,9)) AS Decimal(22,9))
		ELSE CAST(CAST(CAST(CASE
			WHEN CAST(Unwrap(CAST(r.D22s9 AS Decimal(35,22))) * CAST(CAST(Math::Pow(Double('10'), CAST(Ensure(CASE
				WHEN r.Id > 0 THEN NULL
				ELSE r.P
			END, r.P >= -13 AND r.Id <= 0 OR r.Id > 0, 'ROUND precision is out of range for Decimal(22,9)'u) AS Double)) AS Text) AS Decimal(35,22)) AS Double) >= Double('0')
				THEN Math::Round(CAST(Unwrap(CAST(r.D22s9 AS Decimal(35,22))) * CAST(CAST(Math::Pow(Double('10'), CAST(Ensure(CASE
				WHEN r.Id > 0 THEN NULL
				ELSE r.P
			END, r.P >= -13 AND r.Id <= 0 OR r.Id > 0, 'ROUND precision is out of range for Decimal(22,9)'u) AS Double)) AS Text) AS Decimal(35,22)) AS Double))
			ELSE -Math::Round(-CAST(Unwrap(CAST(r.D22s9 AS Decimal(35,22))) * CAST(CAST(Math::Pow(Double('10'), CAST(Ensure(CASE
				WHEN r.Id > 0 THEN NULL
				ELSE r.P
			END, r.P >= -13 AND r.Id <= 0 OR r.Id > 0, 'ROUND precision is out of range for Decimal(22,9)'u) AS Double)) AS Text) AS Decimal(35,22)) AS Double))
		END AS Text) AS Decimal(35,22)) / CAST(CAST(Math::Pow(Double('10'), CAST(Ensure(CASE
			WHEN r.Id > 0 THEN NULL
			ELSE r.P
		END, r.P >= -13 AND r.Id <= 0 OR r.Id > 0, 'ROUND precision is out of range for Decimal(22,9)'u) AS Double)) AS Text) AS Decimal(35,22)) AS Decimal(22,9))
	END as c1
FROM
	RoundNegativeDynamicWide r

-- YDB Ydb
SELECT
	CASE
		WHEN r.P >= 0 THEN Unwrap(CAST(Unwrap(CAST(CASE
			WHEN Unwrap(CAST(r.D35s2 * Unwrap(CAST(Unwrap(CAST(Math::Pow(Double('10'), Unwrap(CAST(CASE
				WHEN r.P > 2 THEN 2
				ELSE r.P
			END AS Double))) AS Text)) AS Decimal(35,2))) AS Double)) >= Double('0')
				THEN Math::Round(Unwrap(CAST(r.D35s2 * Unwrap(CAST(Unwrap(CAST(Math::Pow(Double('10'), Unwrap(CAST(CASE
				WHEN r.P > 2 THEN 2
				ELSE r.P
			END AS Double))) AS Text)) AS Decimal(35,2))) AS Double)))
			ELSE -Math::Round(-Unwrap(CAST(r.D35s2 * Unwrap(CAST(Unwrap(CAST(Math::Pow(Double('10'), Unwrap(CAST(CASE
				WHEN r.P > 2 THEN 2
				ELSE r.P
			END AS Double))) AS Text)) AS Decimal(35,2))) AS Double)))
		END AS Text)) AS Decimal(35,2))) / Unwrap(CAST(Unwrap(CAST(Math::Pow(Double('10'), Unwrap(CAST(CASE
			WHEN r.P > 2 THEN 2
			ELSE r.P
		END AS Double))) AS Text)) AS Decimal(35,2)))
		ELSE Unwrap(CAST(Unwrap(CAST(CASE
			WHEN Unwrap(CAST(r.D35s2 * Unwrap(CAST(Unwrap(CAST(Math::Pow(Double('10'), Unwrap(CAST(Ensure(r.P, r.P >= 0, 'ROUND precision is out of range for Decimal(35,2)'u) AS Double))) AS Text)) AS Decimal(35,2))) AS Double)) >= Double('0')
				THEN Math::Round(Unwrap(CAST(r.D35s2 * Unwrap(CAST(Unwrap(CAST(Math::Pow(Double('10'), Unwrap(CAST(Ensure(r.P, r.P >= 0, 'ROUND precision is out of range for Decimal(35,2)'u) AS Double))) AS Text)) AS Decimal(35,2))) AS Double)))
			ELSE -Math::Round(-Unwrap(CAST(r.D35s2 * Unwrap(CAST(Unwrap(CAST(Math::Pow(Double('10'), Unwrap(CAST(Ensure(r.P, r.P >= 0, 'ROUND precision is out of range for Decimal(35,2)'u) AS Double))) AS Text)) AS Decimal(35,2))) AS Double)))
		END AS Text)) AS Decimal(35,2))) / Unwrap(CAST(Unwrap(CAST(Math::Pow(Double('10'), Unwrap(CAST(Ensure(r.P, r.P >= 0, 'ROUND precision is out of range for Decimal(35,2)'u) AS Double))) AS Text)) AS Decimal(35,2)))
	END as c1
FROM
	RoundNegativeDynamicWide r
WHERE
	r.P < 0

