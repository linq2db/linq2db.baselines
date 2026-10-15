-- YDB Ydb
SELECT
	CASE
		WHEN r.P < 0 THEN Ensure(r.D - r.D, r.D < Decimal('1', 35, 0) AND r.D > Decimal('-1', 35, 0), 'ROUND value is out of range for Decimal(4,4)'u)
		WHEN r.P >= 0 THEN Unwrap(CAST(CASE
			WHEN Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(r.D AS Decimal(9,4))) * Unwrap(CAST(Unwrap(CAST(Math::Pow(Double('10'), Unwrap(CAST(CASE
				WHEN r.P > 4 THEN 4
				ELSE r.P
			END AS Double))) AS Text)) AS Decimal(9,4))) AS Decimal(9,0))) AS Decimal(9,4))) - Unwrap(CAST(r.D AS Decimal(9,4))) * Unwrap(CAST(Unwrap(CAST(Math::Pow(Double('10'), Unwrap(CAST(CASE
				WHEN r.P > 4 THEN 4
				ELSE r.P
			END AS Double))) AS Text)) AS Decimal(9,4))) = Decimal('-0.5', 9, 4) AND Unwrap(CAST(r.D AS Decimal(9,4))) * Unwrap(CAST(Unwrap(CAST(Math::Pow(Double('10'), Unwrap(CAST(CASE
				WHEN r.P > 4 THEN 4
				ELSE r.P
			END AS Double))) AS Text)) AS Decimal(9,4))) > Decimal('0', 9, 4)
				THEN Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(r.D AS Decimal(9,4))) * Unwrap(CAST(Unwrap(CAST(Math::Pow(Double('10'), Unwrap(CAST(CASE
				WHEN r.P > 4 THEN 4
				ELSE r.P
			END AS Double))) AS Text)) AS Decimal(9,4))) AS Decimal(9,0))) + Decimal('1', 9, 0) AS Decimal(9,4)))
			WHEN Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(r.D AS Decimal(9,4))) * Unwrap(CAST(Unwrap(CAST(Math::Pow(Double('10'), Unwrap(CAST(CASE
				WHEN r.P > 4 THEN 4
				ELSE r.P
			END AS Double))) AS Text)) AS Decimal(9,4))) AS Decimal(9,0))) AS Decimal(9,4))) - Unwrap(CAST(r.D AS Decimal(9,4))) * Unwrap(CAST(Unwrap(CAST(Math::Pow(Double('10'), Unwrap(CAST(CASE
				WHEN r.P > 4 THEN 4
				ELSE r.P
			END AS Double))) AS Text)) AS Decimal(9,4))) = Decimal('0.5', 9, 4) AND Unwrap(CAST(r.D AS Decimal(9,4))) * Unwrap(CAST(Unwrap(CAST(Math::Pow(Double('10'), Unwrap(CAST(CASE
				WHEN r.P > 4 THEN 4
				ELSE r.P
			END AS Double))) AS Text)) AS Decimal(9,4))) < Decimal('0', 9, 4)
				THEN Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(r.D AS Decimal(9,4))) * Unwrap(CAST(Unwrap(CAST(Math::Pow(Double('10'), Unwrap(CAST(CASE
				WHEN r.P > 4 THEN 4
				ELSE r.P
			END AS Double))) AS Text)) AS Decimal(9,4))) AS Decimal(9,0))) - Decimal('1', 9, 0) AS Decimal(9,4)))
			ELSE Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(r.D AS Decimal(9,4))) * Unwrap(CAST(Unwrap(CAST(Math::Pow(Double('10'), Unwrap(CAST(CASE
				WHEN r.P > 4 THEN 4
				ELSE r.P
			END AS Double))) AS Text)) AS Decimal(9,4))) AS Decimal(9,0))) AS Decimal(9,4)))
		END / Unwrap(CAST(Unwrap(CAST(Math::Pow(Double('10'), Unwrap(CAST(CASE
			WHEN r.P > 4 THEN 4
			ELSE r.P
		END AS Double))) AS Text)) AS Decimal(9,4))) AS Decimal(4,4)))
		ELSE Unwrap(CAST(Ensure(Unwrap(CAST(r.D AS Decimal(35,35))) * Unwrap(CAST(Unwrap(CAST(Math::Pow(Double('10'), Unwrap(CAST(Ensure(r.P, r.P >= -31 OR r.P < 0, 'ROUND precision is out of range for Decimal(4,4)'u) AS Double))) AS Text)) AS Decimal(35,35))) - Unwrap(CAST(r.D AS Decimal(35,35))) * Unwrap(CAST(Unwrap(CAST(Math::Pow(Double('10'), Unwrap(CAST(Ensure(r.P, r.P >= -31 OR r.P < 0, 'ROUND precision is out of range for Decimal(4,4)'u) AS Double))) AS Text)) AS Decimal(35,35))), Unwrap(CAST(r.D AS Decimal(35,35))) * Unwrap(CAST(Unwrap(CAST(Math::Pow(Double('10'), Unwrap(CAST(Ensure(r.P, r.P >= -31 OR r.P < 0, 'ROUND precision is out of range for Decimal(4,4)'u) AS Double))) AS Text)) AS Decimal(35,35))) < Decimal('0.5', 35, 35) AND Unwrap(CAST(r.D AS Decimal(35,35))) * Unwrap(CAST(Unwrap(CAST(Math::Pow(Double('10'), Unwrap(CAST(Ensure(r.P, r.P >= -31 OR r.P < 0, 'ROUND precision is out of range for Decimal(4,4)'u) AS Double))) AS Text)) AS Decimal(35,35))) > Decimal('-0.5', 35, 35), 'ROUND result is out of range for Decimal(35,35)'u) / Unwrap(CAST(Unwrap(CAST(Math::Pow(Double('10'), Unwrap(CAST(Ensure(r.P, r.P >= -31 OR r.P < 0, 'ROUND precision is out of range for Decimal(4,4)'u) AS Double))) AS Text)) AS Decimal(35,35))) AS Decimal(4,4)))
	END as Away,
	CASE
		WHEN r.P < 0 THEN Ensure(r.D - r.D, r.D < Decimal('1', 35, 0) AND r.D > Decimal('-1', 35, 0), 'ROUND value is out of range for Decimal(4,4)'u)
		WHEN r.P >= 0 THEN Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(r.D AS Decimal(9,4))) * Unwrap(CAST(Unwrap(CAST(Math::Pow(Double('10'), Unwrap(CAST(CASE
			WHEN r.P > 4 THEN 4
			ELSE r.P
		END AS Double))) AS Text)) AS Decimal(9,4))) AS Decimal(9,0))) AS Decimal(9,4))) / Unwrap(CAST(Unwrap(CAST(Math::Pow(Double('10'), Unwrap(CAST(CASE
			WHEN r.P > 4 THEN 4
			ELSE r.P
		END AS Double))) AS Text)) AS Decimal(9,4))) AS Decimal(4,4)))
		ELSE Unwrap(CAST(Ensure(Unwrap(CAST(r.D AS Decimal(35,35))) * Unwrap(CAST(Unwrap(CAST(Math::Pow(Double('10'), Unwrap(CAST(Ensure(r.P, r.P >= -31 OR r.P < 0, 'ROUND precision is out of range for Decimal(4,4)'u) AS Double))) AS Text)) AS Decimal(35,35))) - Unwrap(CAST(r.D AS Decimal(35,35))) * Unwrap(CAST(Unwrap(CAST(Math::Pow(Double('10'), Unwrap(CAST(Ensure(r.P, r.P >= -31 OR r.P < 0, 'ROUND precision is out of range for Decimal(4,4)'u) AS Double))) AS Text)) AS Decimal(35,35))), Unwrap(CAST(r.D AS Decimal(35,35))) * Unwrap(CAST(Unwrap(CAST(Math::Pow(Double('10'), Unwrap(CAST(Ensure(r.P, r.P >= -31 OR r.P < 0, 'ROUND precision is out of range for Decimal(4,4)'u) AS Double))) AS Text)) AS Decimal(35,35))) <= Decimal('0.5', 35, 35) AND Unwrap(CAST(r.D AS Decimal(35,35))) * Unwrap(CAST(Unwrap(CAST(Math::Pow(Double('10'), Unwrap(CAST(Ensure(r.P, r.P >= -31 OR r.P < 0, 'ROUND precision is out of range for Decimal(4,4)'u) AS Double))) AS Text)) AS Decimal(35,35))) >= Decimal('-0.5', 35, 35), 'ROUND result is out of range for Decimal(35,35)'u) / Unwrap(CAST(Unwrap(CAST(Math::Pow(Double('10'), Unwrap(CAST(Ensure(r.P, r.P >= -31 OR r.P < 0, 'ROUND precision is out of range for Decimal(4,4)'u) AS Double))) AS Text)) AS Decimal(35,35))) AS Decimal(4,4)))
	END as Even
FROM
	RoundDynamicNoIntegerDigits r
ORDER BY
	r.Id

