-- YDB Ydb
SELECT
	CASE
		WHEN r.P < -5 THEN Unwrap(CAST(Ensure(Decimal('0.00000', 35, 30), 1 = 1, 'ROUND value is out of range for Decimal(35,30)'u) AS Decimal(35,30)))
		WHEN r.P >= 0 THEN CASE
			WHEN Unwrap(CAST(Unwrap(CAST(Decimal('1.00005', 35, 30) * Unwrap(CAST(Unwrap(CAST(Math::Pow(Double('10'), Unwrap(CAST(CASE
				WHEN r.P > 30 THEN 30
				ELSE r.P
			END AS Double))) AS Text)) AS Decimal(35,30))) AS Decimal(35,0))) AS Decimal(35,30))) - Decimal('1.00005', 35, 30) * Unwrap(CAST(Unwrap(CAST(Math::Pow(Double('10'), Unwrap(CAST(CASE
				WHEN r.P > 30 THEN 30
				ELSE r.P
			END AS Double))) AS Text)) AS Decimal(35,30))) = Decimal('-0.5', 35, 30) AND Decimal('1.00005', 35, 30) * Unwrap(CAST(Unwrap(CAST(Math::Pow(Double('10'), Unwrap(CAST(CASE
				WHEN r.P > 30 THEN 30
				ELSE r.P
			END AS Double))) AS Text)) AS Decimal(35,30))) > Decimal('0', 35, 30)
				THEN Unwrap(CAST(Unwrap(CAST(Decimal('1.00005', 35, 30) * Unwrap(CAST(Unwrap(CAST(Math::Pow(Double('10'), Unwrap(CAST(CASE
				WHEN r.P > 30 THEN 30
				ELSE r.P
			END AS Double))) AS Text)) AS Decimal(35,30))) AS Decimal(35,0))) + Decimal('1', 35, 0) AS Decimal(35,30)))
			WHEN Unwrap(CAST(Unwrap(CAST(Decimal('1.00005', 35, 30) * Unwrap(CAST(Unwrap(CAST(Math::Pow(Double('10'), Unwrap(CAST(CASE
				WHEN r.P > 30 THEN 30
				ELSE r.P
			END AS Double))) AS Text)) AS Decimal(35,30))) AS Decimal(35,0))) AS Decimal(35,30))) - Decimal('1.00005', 35, 30) * Unwrap(CAST(Unwrap(CAST(Math::Pow(Double('10'), Unwrap(CAST(CASE
				WHEN r.P > 30 THEN 30
				ELSE r.P
			END AS Double))) AS Text)) AS Decimal(35,30))) = Decimal('0.5', 35, 30) AND Decimal('1.00005', 35, 30) * Unwrap(CAST(Unwrap(CAST(Math::Pow(Double('10'), Unwrap(CAST(CASE
				WHEN r.P > 30 THEN 30
				ELSE r.P
			END AS Double))) AS Text)) AS Decimal(35,30))) < Decimal('0', 35, 30)
				THEN Unwrap(CAST(Unwrap(CAST(Decimal('1.00005', 35, 30) * Unwrap(CAST(Unwrap(CAST(Math::Pow(Double('10'), Unwrap(CAST(CASE
				WHEN r.P > 30 THEN 30
				ELSE r.P
			END AS Double))) AS Text)) AS Decimal(35,30))) AS Decimal(35,0))) - Decimal('1', 35, 0) AS Decimal(35,30)))
			ELSE Unwrap(CAST(Unwrap(CAST(Decimal('1.00005', 35, 30) * Unwrap(CAST(Unwrap(CAST(Math::Pow(Double('10'), Unwrap(CAST(CASE
				WHEN r.P > 30 THEN 30
				ELSE r.P
			END AS Double))) AS Text)) AS Decimal(35,30))) AS Decimal(35,0))) AS Decimal(35,30)))
		END / Unwrap(CAST(Unwrap(CAST(Math::Pow(Double('10'), Unwrap(CAST(CASE
			WHEN r.P > 30 THEN 30
			ELSE r.P
		END AS Double))) AS Text)) AS Decimal(35,30)))
		ELSE CASE
			WHEN Unwrap(CAST(Unwrap(CAST(Decimal('1.00005', 35, 30) * Unwrap(CAST(Unwrap(CAST(Math::Pow(Double('10'), Unwrap(CAST(Ensure(r.P, r.P >= 0, 'ROUND precision is out of range for Decimal(35,30)'u) AS Double))) AS Text)) AS Decimal(35,30))) AS Decimal(35,0))) AS Decimal(35,30))) - Decimal('1.00005', 35, 30) * Unwrap(CAST(Unwrap(CAST(Math::Pow(Double('10'), Unwrap(CAST(Ensure(r.P, r.P >= 0, 'ROUND precision is out of range for Decimal(35,30)'u) AS Double))) AS Text)) AS Decimal(35,30))) = Decimal('-0.5', 35, 30) AND Decimal('1.00005', 35, 30) * Unwrap(CAST(Unwrap(CAST(Math::Pow(Double('10'), Unwrap(CAST(Ensure(r.P, r.P >= 0, 'ROUND precision is out of range for Decimal(35,30)'u) AS Double))) AS Text)) AS Decimal(35,30))) > Decimal('0', 35, 30)
				THEN Unwrap(CAST(Unwrap(CAST(Decimal('1.00005', 35, 30) * Unwrap(CAST(Unwrap(CAST(Math::Pow(Double('10'), Unwrap(CAST(Ensure(r.P, r.P >= 0, 'ROUND precision is out of range for Decimal(35,30)'u) AS Double))) AS Text)) AS Decimal(35,30))) AS Decimal(35,0))) + Decimal('1', 35, 0) AS Decimal(35,30)))
			WHEN Unwrap(CAST(Unwrap(CAST(Decimal('1.00005', 35, 30) * Unwrap(CAST(Unwrap(CAST(Math::Pow(Double('10'), Unwrap(CAST(Ensure(r.P, r.P >= 0, 'ROUND precision is out of range for Decimal(35,30)'u) AS Double))) AS Text)) AS Decimal(35,30))) AS Decimal(35,0))) AS Decimal(35,30))) - Decimal('1.00005', 35, 30) * Unwrap(CAST(Unwrap(CAST(Math::Pow(Double('10'), Unwrap(CAST(Ensure(r.P, r.P >= 0, 'ROUND precision is out of range for Decimal(35,30)'u) AS Double))) AS Text)) AS Decimal(35,30))) = Decimal('0.5', 35, 30) AND Decimal('1.00005', 35, 30) * Unwrap(CAST(Unwrap(CAST(Math::Pow(Double('10'), Unwrap(CAST(Ensure(r.P, r.P >= 0, 'ROUND precision is out of range for Decimal(35,30)'u) AS Double))) AS Text)) AS Decimal(35,30))) < Decimal('0', 35, 30)
				THEN Unwrap(CAST(Unwrap(CAST(Decimal('1.00005', 35, 30) * Unwrap(CAST(Unwrap(CAST(Math::Pow(Double('10'), Unwrap(CAST(Ensure(r.P, r.P >= 0, 'ROUND precision is out of range for Decimal(35,30)'u) AS Double))) AS Text)) AS Decimal(35,30))) AS Decimal(35,0))) - Decimal('1', 35, 0) AS Decimal(35,30)))
			ELSE Unwrap(CAST(Unwrap(CAST(Decimal('1.00005', 35, 30) * Unwrap(CAST(Unwrap(CAST(Math::Pow(Double('10'), Unwrap(CAST(Ensure(r.P, r.P >= 0, 'ROUND precision is out of range for Decimal(35,30)'u) AS Double))) AS Text)) AS Decimal(35,30))) AS Decimal(35,0))) AS Decimal(35,30)))
		END / Unwrap(CAST(Unwrap(CAST(Math::Pow(Double('10'), Unwrap(CAST(Ensure(r.P, r.P >= 0, 'ROUND precision is out of range for Decimal(35,30)'u) AS Double))) AS Text)) AS Decimal(35,30)))
	END + r.W = Decimal('17.0001', 22, 9) as c1
FROM
	RoundValueScaleWide r
LIMIT 2

