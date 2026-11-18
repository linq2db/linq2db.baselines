-- YDB Ydb
SELECT
	CASE
		WHEN r.P < -4 THEN Unwrap(CAST(Ensure(r.D - r.D, r.D < Decimal('10000', 35, 0) AND r.D > Decimal('-10000', 35, 0), 'ROUND value is out of range for Decimal(6,2)'u) AS Decimal(6,2)))
		WHEN r.P >= 0 THEN Unwrap(CAST(CASE
			WHEN Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(r.D AS Decimal(8,2))) * Unwrap(CAST(Unwrap(CAST(Math::Pow(Double('10'), Unwrap(CAST(CASE
				WHEN r.P > 2 THEN 2
				ELSE r.P
			END AS Double))) AS Text)) AS Decimal(8,2))) AS Decimal(8,0))) AS Decimal(8,2))) - Unwrap(CAST(r.D AS Decimal(8,2))) * Unwrap(CAST(Unwrap(CAST(Math::Pow(Double('10'), Unwrap(CAST(CASE
				WHEN r.P > 2 THEN 2
				ELSE r.P
			END AS Double))) AS Text)) AS Decimal(8,2))) = Decimal('-0.5', 8, 2) AND Unwrap(CAST(r.D AS Decimal(8,2))) * Unwrap(CAST(Unwrap(CAST(Math::Pow(Double('10'), Unwrap(CAST(CASE
				WHEN r.P > 2 THEN 2
				ELSE r.P
			END AS Double))) AS Text)) AS Decimal(8,2))) > Decimal('0', 8, 2)
				THEN Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(r.D AS Decimal(8,2))) * Unwrap(CAST(Unwrap(CAST(Math::Pow(Double('10'), Unwrap(CAST(CASE
				WHEN r.P > 2 THEN 2
				ELSE r.P
			END AS Double))) AS Text)) AS Decimal(8,2))) AS Decimal(8,0))) + Decimal('1', 8, 0) AS Decimal(8,2)))
			WHEN Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(r.D AS Decimal(8,2))) * Unwrap(CAST(Unwrap(CAST(Math::Pow(Double('10'), Unwrap(CAST(CASE
				WHEN r.P > 2 THEN 2
				ELSE r.P
			END AS Double))) AS Text)) AS Decimal(8,2))) AS Decimal(8,0))) AS Decimal(8,2))) - Unwrap(CAST(r.D AS Decimal(8,2))) * Unwrap(CAST(Unwrap(CAST(Math::Pow(Double('10'), Unwrap(CAST(CASE
				WHEN r.P > 2 THEN 2
				ELSE r.P
			END AS Double))) AS Text)) AS Decimal(8,2))) = Decimal('0.5', 8, 2) AND Unwrap(CAST(r.D AS Decimal(8,2))) * Unwrap(CAST(Unwrap(CAST(Math::Pow(Double('10'), Unwrap(CAST(CASE
				WHEN r.P > 2 THEN 2
				ELSE r.P
			END AS Double))) AS Text)) AS Decimal(8,2))) < Decimal('0', 8, 2)
				THEN Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(r.D AS Decimal(8,2))) * Unwrap(CAST(Unwrap(CAST(Math::Pow(Double('10'), Unwrap(CAST(CASE
				WHEN r.P > 2 THEN 2
				ELSE r.P
			END AS Double))) AS Text)) AS Decimal(8,2))) AS Decimal(8,0))) - Decimal('1', 8, 0) AS Decimal(8,2)))
			ELSE Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(r.D AS Decimal(8,2))) * Unwrap(CAST(Unwrap(CAST(Math::Pow(Double('10'), Unwrap(CAST(CASE
				WHEN r.P > 2 THEN 2
				ELSE r.P
			END AS Double))) AS Text)) AS Decimal(8,2))) AS Decimal(8,0))) AS Decimal(8,2)))
		END / Unwrap(CAST(Unwrap(CAST(Math::Pow(Double('10'), Unwrap(CAST(CASE
			WHEN r.P > 2 THEN 2
			ELSE r.P
		END AS Double))) AS Text)) AS Decimal(8,2))) AS Decimal(6,2)))
		ELSE Unwrap(CAST(CASE
			WHEN Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(r.D AS Decimal(35,31))) * Unwrap(CAST(Unwrap(CAST(Math::Pow(Double('10'), Unwrap(CAST(Ensure(r.P, r.P >= -29, 'ROUND precision is out of range for Decimal(6,2)'u) AS Double))) AS Text)) AS Decimal(35,31))) AS Decimal(35,0))) AS Decimal(35,31))) - Unwrap(CAST(r.D AS Decimal(35,31))) * Unwrap(CAST(Unwrap(CAST(Math::Pow(Double('10'), Unwrap(CAST(Ensure(r.P, r.P >= -29, 'ROUND precision is out of range for Decimal(6,2)'u) AS Double))) AS Text)) AS Decimal(35,31))) = Decimal('-0.5', 35, 31) AND Unwrap(CAST(r.D AS Decimal(35,31))) * Unwrap(CAST(Unwrap(CAST(Math::Pow(Double('10'), Unwrap(CAST(Ensure(r.P, r.P >= -29, 'ROUND precision is out of range for Decimal(6,2)'u) AS Double))) AS Text)) AS Decimal(35,31))) > Decimal('0', 35, 31)
				THEN Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(r.D AS Decimal(35,31))) * Unwrap(CAST(Unwrap(CAST(Math::Pow(Double('10'), Unwrap(CAST(Ensure(r.P, r.P >= -29, 'ROUND precision is out of range for Decimal(6,2)'u) AS Double))) AS Text)) AS Decimal(35,31))) AS Decimal(35,0))) + Decimal('1', 35, 0) AS Decimal(35,31)))
			WHEN Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(r.D AS Decimal(35,31))) * Unwrap(CAST(Unwrap(CAST(Math::Pow(Double('10'), Unwrap(CAST(Ensure(r.P, r.P >= -29, 'ROUND precision is out of range for Decimal(6,2)'u) AS Double))) AS Text)) AS Decimal(35,31))) AS Decimal(35,0))) AS Decimal(35,31))) - Unwrap(CAST(r.D AS Decimal(35,31))) * Unwrap(CAST(Unwrap(CAST(Math::Pow(Double('10'), Unwrap(CAST(Ensure(r.P, r.P >= -29, 'ROUND precision is out of range for Decimal(6,2)'u) AS Double))) AS Text)) AS Decimal(35,31))) = Decimal('0.5', 35, 31) AND Unwrap(CAST(r.D AS Decimal(35,31))) * Unwrap(CAST(Unwrap(CAST(Math::Pow(Double('10'), Unwrap(CAST(Ensure(r.P, r.P >= -29, 'ROUND precision is out of range for Decimal(6,2)'u) AS Double))) AS Text)) AS Decimal(35,31))) < Decimal('0', 35, 31)
				THEN Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(r.D AS Decimal(35,31))) * Unwrap(CAST(Unwrap(CAST(Math::Pow(Double('10'), Unwrap(CAST(Ensure(r.P, r.P >= -29, 'ROUND precision is out of range for Decimal(6,2)'u) AS Double))) AS Text)) AS Decimal(35,31))) AS Decimal(35,0))) - Decimal('1', 35, 0) AS Decimal(35,31)))
			ELSE Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(r.D AS Decimal(35,31))) * Unwrap(CAST(Unwrap(CAST(Math::Pow(Double('10'), Unwrap(CAST(Ensure(r.P, r.P >= -29, 'ROUND precision is out of range for Decimal(6,2)'u) AS Double))) AS Text)) AS Decimal(35,31))) AS Decimal(35,0))) AS Decimal(35,31)))
		END / Unwrap(CAST(Unwrap(CAST(Math::Pow(Double('10'), Unwrap(CAST(Ensure(r.P, r.P >= -29, 'ROUND precision is out of range for Decimal(6,2)'u) AS Double))) AS Text)) AS Decimal(35,31))) AS Decimal(6,2)))
	END as Away,
	CASE
		WHEN r.P < -4 THEN Unwrap(CAST(Ensure(r.D - r.D, r.D < Decimal('10000', 35, 0) AND r.D > Decimal('-10000', 35, 0), 'ROUND value is out of range for Decimal(6,2)'u) AS Decimal(6,2)))
		WHEN r.P >= 0 THEN Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(r.D AS Decimal(8,2))) * Unwrap(CAST(Unwrap(CAST(Math::Pow(Double('10'), Unwrap(CAST(CASE
			WHEN r.P > 2 THEN 2
			ELSE r.P
		END AS Double))) AS Text)) AS Decimal(8,2))) AS Decimal(8,0))) AS Decimal(8,2))) / Unwrap(CAST(Unwrap(CAST(Math::Pow(Double('10'), Unwrap(CAST(CASE
			WHEN r.P > 2 THEN 2
			ELSE r.P
		END AS Double))) AS Text)) AS Decimal(8,2))) AS Decimal(6,2)))
		ELSE Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(r.D AS Decimal(35,31))) * Unwrap(CAST(Unwrap(CAST(Math::Pow(Double('10'), Unwrap(CAST(Ensure(r.P, r.P >= -29, 'ROUND precision is out of range for Decimal(6,2)'u) AS Double))) AS Text)) AS Decimal(35,31))) AS Decimal(35,0))) AS Decimal(35,31))) / Unwrap(CAST(Unwrap(CAST(Math::Pow(Double('10'), Unwrap(CAST(Ensure(r.P, r.P >= -29, 'ROUND precision is out of range for Decimal(6,2)'u) AS Double))) AS Text)) AS Decimal(35,31))) AS Decimal(6,2)))
	END as Even
FROM
	RoundNegativeDynamic r
ORDER BY
	r.Id

