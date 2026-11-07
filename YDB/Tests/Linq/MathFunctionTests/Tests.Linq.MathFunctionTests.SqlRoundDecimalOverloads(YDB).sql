-- YDB Ydb
SELECT
	r.Id as Id,
	CAST(CASE
		WHEN CAST(CAST(CAST(r.D AS Decimal(35,22)) AS Decimal(35,0)) AS Decimal(35,22)) - CAST(r.D AS Decimal(35,22)) = Decimal('-0.5', 35, 22) AND CAST(r.D AS Decimal(35,22)) > Decimal('0', 35, 22)
			THEN CAST(CAST(CAST(r.D AS Decimal(35,22)) AS Decimal(35,0)) + Decimal('1', 35, 0) AS Decimal(35,22))
		WHEN CAST(CAST(CAST(r.D AS Decimal(35,22)) AS Decimal(35,0)) AS Decimal(35,22)) - CAST(r.D AS Decimal(35,22)) = Decimal('0.5', 35, 22) AND CAST(r.D AS Decimal(35,22)) < Decimal('0', 35, 22)
			THEN CAST(CAST(CAST(r.D AS Decimal(35,22)) AS Decimal(35,0)) - Decimal('1', 35, 0) AS Decimal(35,22))
		ELSE CAST(CAST(CAST(r.D AS Decimal(35,22)) AS Decimal(35,0)) AS Decimal(35,22))
	END AS Decimal(22,9)) as Round,
	CASE
		WHEN r.P < -13 THEN CAST(Ensure(r.D - r.D, r.D < Decimal('10000000000000', 35, 0) AND r.D > Decimal('-10000000000000', 35, 0) OR r.D IS NULL, 'ROUND value is out of range for Decimal(22,9)'u) AS Decimal(22,9))
		WHEN r.P >= 0 THEN CAST(CASE
			WHEN CAST(CAST(CAST(r.D AS Decimal(35,13)) * CAST(CAST(Math::Pow(Double('10'), CAST(CASE
				WHEN r.P > 9 THEN 9
				ELSE r.P
			END AS Double)) AS Text) AS Decimal(35,13)) AS Decimal(35,0)) AS Decimal(35,13)) - CAST(r.D AS Decimal(35,13)) * CAST(CAST(Math::Pow(Double('10'), CAST(CASE
				WHEN r.P > 9 THEN 9
				ELSE r.P
			END AS Double)) AS Text) AS Decimal(35,13)) = Decimal('-0.5', 35, 13) AND CAST(r.D AS Decimal(35,13)) * CAST(CAST(Math::Pow(Double('10'), CAST(CASE
				WHEN r.P > 9 THEN 9
				ELSE r.P
			END AS Double)) AS Text) AS Decimal(35,13)) > Decimal('0', 35, 13)
				THEN CAST(CAST(CAST(r.D AS Decimal(35,13)) * CAST(CAST(Math::Pow(Double('10'), CAST(CASE
				WHEN r.P > 9 THEN 9
				ELSE r.P
			END AS Double)) AS Text) AS Decimal(35,13)) AS Decimal(35,0)) + Decimal('1', 35, 0) AS Decimal(35,13))
			WHEN CAST(CAST(CAST(r.D AS Decimal(35,13)) * CAST(CAST(Math::Pow(Double('10'), CAST(CASE
				WHEN r.P > 9 THEN 9
				ELSE r.P
			END AS Double)) AS Text) AS Decimal(35,13)) AS Decimal(35,0)) AS Decimal(35,13)) - CAST(r.D AS Decimal(35,13)) * CAST(CAST(Math::Pow(Double('10'), CAST(CASE
				WHEN r.P > 9 THEN 9
				ELSE r.P
			END AS Double)) AS Text) AS Decimal(35,13)) = Decimal('0.5', 35, 13) AND CAST(r.D AS Decimal(35,13)) * CAST(CAST(Math::Pow(Double('10'), CAST(CASE
				WHEN r.P > 9 THEN 9
				ELSE r.P
			END AS Double)) AS Text) AS Decimal(35,13)) < Decimal('0', 35, 13)
				THEN CAST(CAST(CAST(r.D AS Decimal(35,13)) * CAST(CAST(Math::Pow(Double('10'), CAST(CASE
				WHEN r.P > 9 THEN 9
				ELSE r.P
			END AS Double)) AS Text) AS Decimal(35,13)) AS Decimal(35,0)) - Decimal('1', 35, 0) AS Decimal(35,13))
			ELSE CAST(CAST(CAST(r.D AS Decimal(35,13)) * CAST(CAST(Math::Pow(Double('10'), CAST(CASE
				WHEN r.P > 9 THEN 9
				ELSE r.P
			END AS Double)) AS Text) AS Decimal(35,13)) AS Decimal(35,0)) AS Decimal(35,13))
		END / CAST(CAST(Math::Pow(Double('10'), CAST(CASE
			WHEN r.P > 9 THEN 9
			ELSE r.P
		END AS Double)) AS Text) AS Decimal(35,13)) AS Decimal(22,9))
		ELSE CAST(CASE
			WHEN CAST(CAST(CAST(r.D AS Decimal(35,22)) * CAST(CAST(Math::Pow(Double('10'), CAST(Ensure(r.P, r.P >= -13 OR r.P IS NULL, 'ROUND precision is out of range for Decimal(22,9)'u) AS Double)) AS Text) AS Decimal(35,22)) AS Decimal(35,0)) AS Decimal(35,22)) - CAST(r.D AS Decimal(35,22)) * CAST(CAST(Math::Pow(Double('10'), CAST(Ensure(r.P, r.P >= -13 OR r.P IS NULL, 'ROUND precision is out of range for Decimal(22,9)'u) AS Double)) AS Text) AS Decimal(35,22)) = Decimal('-0.5', 35, 22) AND CAST(r.D AS Decimal(35,22)) * CAST(CAST(Math::Pow(Double('10'), CAST(Ensure(r.P, r.P >= -13 OR r.P IS NULL, 'ROUND precision is out of range for Decimal(22,9)'u) AS Double)) AS Text) AS Decimal(35,22)) > Decimal('0', 35, 22)
				THEN CAST(CAST(CAST(r.D AS Decimal(35,22)) * CAST(CAST(Math::Pow(Double('10'), CAST(Ensure(r.P, r.P >= -13 OR r.P IS NULL, 'ROUND precision is out of range for Decimal(22,9)'u) AS Double)) AS Text) AS Decimal(35,22)) AS Decimal(35,0)) + Decimal('1', 35, 0) AS Decimal(35,22))
			WHEN CAST(CAST(CAST(r.D AS Decimal(35,22)) * CAST(CAST(Math::Pow(Double('10'), CAST(Ensure(r.P, r.P >= -13 OR r.P IS NULL, 'ROUND precision is out of range for Decimal(22,9)'u) AS Double)) AS Text) AS Decimal(35,22)) AS Decimal(35,0)) AS Decimal(35,22)) - CAST(r.D AS Decimal(35,22)) * CAST(CAST(Math::Pow(Double('10'), CAST(Ensure(r.P, r.P >= -13 OR r.P IS NULL, 'ROUND precision is out of range for Decimal(22,9)'u) AS Double)) AS Text) AS Decimal(35,22)) = Decimal('0.5', 35, 22) AND CAST(r.D AS Decimal(35,22)) * CAST(CAST(Math::Pow(Double('10'), CAST(Ensure(r.P, r.P >= -13 OR r.P IS NULL, 'ROUND precision is out of range for Decimal(22,9)'u) AS Double)) AS Text) AS Decimal(35,22)) < Decimal('0', 35, 22)
				THEN CAST(CAST(CAST(r.D AS Decimal(35,22)) * CAST(CAST(Math::Pow(Double('10'), CAST(Ensure(r.P, r.P >= -13 OR r.P IS NULL, 'ROUND precision is out of range for Decimal(22,9)'u) AS Double)) AS Text) AS Decimal(35,22)) AS Decimal(35,0)) - Decimal('1', 35, 0) AS Decimal(35,22))
			ELSE CAST(CAST(CAST(r.D AS Decimal(35,22)) * CAST(CAST(Math::Pow(Double('10'), CAST(Ensure(r.P, r.P >= -13 OR r.P IS NULL, 'ROUND precision is out of range for Decimal(22,9)'u) AS Double)) AS Text) AS Decimal(35,22)) AS Decimal(35,0)) AS Decimal(35,22))
		END / CAST(CAST(Math::Pow(Double('10'), CAST(Ensure(r.P, r.P >= -13 OR r.P IS NULL, 'ROUND precision is out of range for Decimal(22,9)'u) AS Double)) AS Text) AS Decimal(35,22)) AS Decimal(22,9))
	END as RoundPrecision,
	CAST(CAST(CAST(CAST(r.D AS Decimal(35,22)) AS Decimal(35,0)) AS Decimal(35,22)) AS Decimal(22,9)) as ToEven,
	CASE
		WHEN r.P < -13 THEN CAST(Ensure(r.D - r.D, r.D < Decimal('10000000000000', 35, 0) AND r.D > Decimal('-10000000000000', 35, 0) OR r.D IS NULL, 'ROUND value is out of range for Decimal(22,9)'u) AS Decimal(22,9))
		WHEN r.P >= 0 THEN CAST(CAST(CAST(CAST(r.D AS Decimal(35,13)) * CAST(CAST(Math::Pow(Double('10'), CAST(CASE
			WHEN r.P > 9 THEN 9
			ELSE r.P
		END AS Double)) AS Text) AS Decimal(35,13)) AS Decimal(35,0)) AS Decimal(35,13)) / CAST(CAST(Math::Pow(Double('10'), CAST(CASE
			WHEN r.P > 9 THEN 9
			ELSE r.P
		END AS Double)) AS Text) AS Decimal(35,13)) AS Decimal(22,9))
		ELSE CAST(CAST(CAST(CAST(r.D AS Decimal(35,22)) * CAST(CAST(Math::Pow(Double('10'), CAST(Ensure(r.P, r.P >= -13 OR r.P IS NULL, 'ROUND precision is out of range for Decimal(22,9)'u) AS Double)) AS Text) AS Decimal(35,22)) AS Decimal(35,0)) AS Decimal(35,22)) / CAST(CAST(Math::Pow(Double('10'), CAST(Ensure(r.P, r.P >= -13 OR r.P IS NULL, 'ROUND precision is out of range for Decimal(22,9)'u) AS Double)) AS Text) AS Decimal(35,22)) AS Decimal(22,9))
	END as ToEvenPrecision
FROM
	RoundValues r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	t1.Id as Id,
	t1.D as D,
	t1.F as F,
	t1.P as P
FROM
	RoundValues t1

