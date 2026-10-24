-- YDB Ydb
SELECT
	Unwrap(CAST(Unwrap(CAST(Math::Pow(Unwrap(CAST(Decimal('1.00005', 6, 5) AS Double)), Unwrap(CAST(r.E AS Double))) AS Text)) AS Decimal(18,4))) + r.D as Pow,
	Unwrap(CAST(Unwrap(CAST(Math::Pow(Unwrap(CAST(Decimal('0.00005', 5, 5) AS Double)), Unwrap(CAST(r.E AS Double))) AS Text)) AS Decimal(18,4))) + r.D as PowTiny,
	Unwrap(CAST(CASE
		WHEN r.P < -1 THEN Unwrap(CAST(Ensure(Decimal('0.00000', 6, 5), 1 = 1, 'ROUND value is out of range for Decimal(6,5)'u) AS Decimal(6,5)))
		WHEN r.P >= 0 THEN Unwrap(CAST(CASE
			WHEN Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(Decimal('1.00005', 6, 5) AS Decimal(11,5))) * Unwrap(CAST(Unwrap(CAST(Math::Pow(Double('10'), Unwrap(CAST(CASE
				WHEN r.P > 5 THEN 5
				ELSE r.P
			END AS Double))) AS Text)) AS Decimal(11,5))) AS Decimal(11,0))) AS Decimal(11,5))) - Unwrap(CAST(Decimal('1.00005', 6, 5) AS Decimal(11,5))) * Unwrap(CAST(Unwrap(CAST(Math::Pow(Double('10'), Unwrap(CAST(CASE
				WHEN r.P > 5 THEN 5
				ELSE r.P
			END AS Double))) AS Text)) AS Decimal(11,5))) = Decimal('-0.5', 11, 5) AND Unwrap(CAST(Decimal('1.00005', 6, 5) AS Decimal(11,5))) * Unwrap(CAST(Unwrap(CAST(Math::Pow(Double('10'), Unwrap(CAST(CASE
				WHEN r.P > 5 THEN 5
				ELSE r.P
			END AS Double))) AS Text)) AS Decimal(11,5))) > Decimal('0', 11, 5)
				THEN Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(Decimal('1.00005', 6, 5) AS Decimal(11,5))) * Unwrap(CAST(Unwrap(CAST(Math::Pow(Double('10'), Unwrap(CAST(CASE
				WHEN r.P > 5 THEN 5
				ELSE r.P
			END AS Double))) AS Text)) AS Decimal(11,5))) AS Decimal(11,0))) + Decimal('1', 11, 0) AS Decimal(11,5)))
			WHEN Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(Decimal('1.00005', 6, 5) AS Decimal(11,5))) * Unwrap(CAST(Unwrap(CAST(Math::Pow(Double('10'), Unwrap(CAST(CASE
				WHEN r.P > 5 THEN 5
				ELSE r.P
			END AS Double))) AS Text)) AS Decimal(11,5))) AS Decimal(11,0))) AS Decimal(11,5))) - Unwrap(CAST(Decimal('1.00005', 6, 5) AS Decimal(11,5))) * Unwrap(CAST(Unwrap(CAST(Math::Pow(Double('10'), Unwrap(CAST(CASE
				WHEN r.P > 5 THEN 5
				ELSE r.P
			END AS Double))) AS Text)) AS Decimal(11,5))) = Decimal('0.5', 11, 5) AND Unwrap(CAST(Decimal('1.00005', 6, 5) AS Decimal(11,5))) * Unwrap(CAST(Unwrap(CAST(Math::Pow(Double('10'), Unwrap(CAST(CASE
				WHEN r.P > 5 THEN 5
				ELSE r.P
			END AS Double))) AS Text)) AS Decimal(11,5))) < Decimal('0', 11, 5)
				THEN Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(Decimal('1.00005', 6, 5) AS Decimal(11,5))) * Unwrap(CAST(Unwrap(CAST(Math::Pow(Double('10'), Unwrap(CAST(CASE
				WHEN r.P > 5 THEN 5
				ELSE r.P
			END AS Double))) AS Text)) AS Decimal(11,5))) AS Decimal(11,0))) - Decimal('1', 11, 0) AS Decimal(11,5)))
			ELSE Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(Decimal('1.00005', 6, 5) AS Decimal(11,5))) * Unwrap(CAST(Unwrap(CAST(Math::Pow(Double('10'), Unwrap(CAST(CASE
				WHEN r.P > 5 THEN 5
				ELSE r.P
			END AS Double))) AS Text)) AS Decimal(11,5))) AS Decimal(11,0))) AS Decimal(11,5)))
		END / Unwrap(CAST(Unwrap(CAST(Math::Pow(Double('10'), Unwrap(CAST(CASE
			WHEN r.P > 5 THEN 5
			ELSE r.P
		END AS Double))) AS Text)) AS Decimal(11,5))) AS Decimal(6,5)))
		ELSE Unwrap(CAST(CASE
			WHEN Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(Decimal('1.00005', 6, 5) AS Decimal(35,34))) * Unwrap(CAST(Unwrap(CAST(Math::Pow(Double('10'), Unwrap(CAST(Ensure(r.P, r.P >= -29, 'ROUND precision is out of range for Decimal(6,5)'u) AS Double))) AS Text)) AS Decimal(35,34))) AS Decimal(35,0))) AS Decimal(35,34))) - Unwrap(CAST(Decimal('1.00005', 6, 5) AS Decimal(35,34))) * Unwrap(CAST(Unwrap(CAST(Math::Pow(Double('10'), Unwrap(CAST(Ensure(r.P, r.P >= -29, 'ROUND precision is out of range for Decimal(6,5)'u) AS Double))) AS Text)) AS Decimal(35,34))) = Decimal('-0.5', 35, 34) AND Unwrap(CAST(Decimal('1.00005', 6, 5) AS Decimal(35,34))) * Unwrap(CAST(Unwrap(CAST(Math::Pow(Double('10'), Unwrap(CAST(Ensure(r.P, r.P >= -29, 'ROUND precision is out of range for Decimal(6,5)'u) AS Double))) AS Text)) AS Decimal(35,34))) > Decimal('0', 35, 34)
				THEN Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(Decimal('1.00005', 6, 5) AS Decimal(35,34))) * Unwrap(CAST(Unwrap(CAST(Math::Pow(Double('10'), Unwrap(CAST(Ensure(r.P, r.P >= -29, 'ROUND precision is out of range for Decimal(6,5)'u) AS Double))) AS Text)) AS Decimal(35,34))) AS Decimal(35,0))) + Decimal('1', 35, 0) AS Decimal(35,34)))
			WHEN Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(Decimal('1.00005', 6, 5) AS Decimal(35,34))) * Unwrap(CAST(Unwrap(CAST(Math::Pow(Double('10'), Unwrap(CAST(Ensure(r.P, r.P >= -29, 'ROUND precision is out of range for Decimal(6,5)'u) AS Double))) AS Text)) AS Decimal(35,34))) AS Decimal(35,0))) AS Decimal(35,34))) - Unwrap(CAST(Decimal('1.00005', 6, 5) AS Decimal(35,34))) * Unwrap(CAST(Unwrap(CAST(Math::Pow(Double('10'), Unwrap(CAST(Ensure(r.P, r.P >= -29, 'ROUND precision is out of range for Decimal(6,5)'u) AS Double))) AS Text)) AS Decimal(35,34))) = Decimal('0.5', 35, 34) AND Unwrap(CAST(Decimal('1.00005', 6, 5) AS Decimal(35,34))) * Unwrap(CAST(Unwrap(CAST(Math::Pow(Double('10'), Unwrap(CAST(Ensure(r.P, r.P >= -29, 'ROUND precision is out of range for Decimal(6,5)'u) AS Double))) AS Text)) AS Decimal(35,34))) < Decimal('0', 35, 34)
				THEN Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(Decimal('1.00005', 6, 5) AS Decimal(35,34))) * Unwrap(CAST(Unwrap(CAST(Math::Pow(Double('10'), Unwrap(CAST(Ensure(r.P, r.P >= -29, 'ROUND precision is out of range for Decimal(6,5)'u) AS Double))) AS Text)) AS Decimal(35,34))) AS Decimal(35,0))) - Decimal('1', 35, 0) AS Decimal(35,34)))
			ELSE Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(Decimal('1.00005', 6, 5) AS Decimal(35,34))) * Unwrap(CAST(Unwrap(CAST(Math::Pow(Double('10'), Unwrap(CAST(Ensure(r.P, r.P >= -29, 'ROUND precision is out of range for Decimal(6,5)'u) AS Double))) AS Text)) AS Decimal(35,34))) AS Decimal(35,0))) AS Decimal(35,34)))
		END / Unwrap(CAST(Unwrap(CAST(Math::Pow(Double('10'), Unwrap(CAST(Ensure(r.P, r.P >= -29, 'ROUND precision is out of range for Decimal(6,5)'u) AS Double))) AS Text)) AS Decimal(35,34))) AS Decimal(6,5)))
	END AS Decimal(18,4))) + r.D as Away,
	Unwrap(CAST(CASE
		WHEN r.P3 < -1 THEN Unwrap(CAST(Ensure(Decimal('0.00000', 6, 5), 1 = 1, 'ROUND value is out of range for Decimal(6,5)'u) AS Decimal(6,5)))
		WHEN r.P3 >= 0 THEN Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(Decimal('1.00051', 6, 5) AS Decimal(11,5))) * Unwrap(CAST(Unwrap(CAST(Math::Pow(Double('10'), Unwrap(CAST(CASE
			WHEN r.P3 > 5 THEN 5
			ELSE r.P3
		END AS Double))) AS Text)) AS Decimal(11,5))) AS Decimal(11,0))) AS Decimal(11,5))) / Unwrap(CAST(Unwrap(CAST(Math::Pow(Double('10'), Unwrap(CAST(CASE
			WHEN r.P3 > 5 THEN 5
			ELSE r.P3
		END AS Double))) AS Text)) AS Decimal(11,5))) AS Decimal(6,5)))
		ELSE Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(Decimal('1.00051', 6, 5) AS Decimal(35,34))) * Unwrap(CAST(Unwrap(CAST(Math::Pow(Double('10'), Unwrap(CAST(Ensure(r.P3, r.P3 >= -29, 'ROUND precision is out of range for Decimal(6,5)'u) AS Double))) AS Text)) AS Decimal(35,34))) AS Decimal(35,0))) AS Decimal(35,34))) / Unwrap(CAST(Unwrap(CAST(Math::Pow(Double('10'), Unwrap(CAST(Ensure(r.P3, r.P3 >= -29, 'ROUND precision is out of range for Decimal(6,5)'u) AS Double))) AS Text)) AS Decimal(35,34))) AS Decimal(6,5)))
	END AS Decimal(18,4))) + r.D as Even,
	Unwrap(CAST(CASE
		WHEN r.P < 0 THEN Unwrap(CAST(Ensure(Decimal('0.00000', 5, 5), 1 = 1, 'ROUND value is out of range for Decimal(5,5)'u) AS Decimal(5,5)))
		WHEN r.P >= 0 THEN Unwrap(CAST(CASE
			WHEN Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(Decimal('0.00005', 5, 5) AS Decimal(11,5))) * Unwrap(CAST(Unwrap(CAST(Math::Pow(Double('10'), Unwrap(CAST(CASE
				WHEN r.P > 5 THEN 5
				ELSE r.P
			END AS Double))) AS Text)) AS Decimal(11,5))) AS Decimal(11,0))) AS Decimal(11,5))) - Unwrap(CAST(Decimal('0.00005', 5, 5) AS Decimal(11,5))) * Unwrap(CAST(Unwrap(CAST(Math::Pow(Double('10'), Unwrap(CAST(CASE
				WHEN r.P > 5 THEN 5
				ELSE r.P
			END AS Double))) AS Text)) AS Decimal(11,5))) = Decimal('-0.5', 11, 5) AND Unwrap(CAST(Decimal('0.00005', 5, 5) AS Decimal(11,5))) * Unwrap(CAST(Unwrap(CAST(Math::Pow(Double('10'), Unwrap(CAST(CASE
				WHEN r.P > 5 THEN 5
				ELSE r.P
			END AS Double))) AS Text)) AS Decimal(11,5))) > Decimal('0', 11, 5)
				THEN Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(Decimal('0.00005', 5, 5) AS Decimal(11,5))) * Unwrap(CAST(Unwrap(CAST(Math::Pow(Double('10'), Unwrap(CAST(CASE
				WHEN r.P > 5 THEN 5
				ELSE r.P
			END AS Double))) AS Text)) AS Decimal(11,5))) AS Decimal(11,0))) + Decimal('1', 11, 0) AS Decimal(11,5)))
			WHEN Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(Decimal('0.00005', 5, 5) AS Decimal(11,5))) * Unwrap(CAST(Unwrap(CAST(Math::Pow(Double('10'), Unwrap(CAST(CASE
				WHEN r.P > 5 THEN 5
				ELSE r.P
			END AS Double))) AS Text)) AS Decimal(11,5))) AS Decimal(11,0))) AS Decimal(11,5))) - Unwrap(CAST(Decimal('0.00005', 5, 5) AS Decimal(11,5))) * Unwrap(CAST(Unwrap(CAST(Math::Pow(Double('10'), Unwrap(CAST(CASE
				WHEN r.P > 5 THEN 5
				ELSE r.P
			END AS Double))) AS Text)) AS Decimal(11,5))) = Decimal('0.5', 11, 5) AND Unwrap(CAST(Decimal('0.00005', 5, 5) AS Decimal(11,5))) * Unwrap(CAST(Unwrap(CAST(Math::Pow(Double('10'), Unwrap(CAST(CASE
				WHEN r.P > 5 THEN 5
				ELSE r.P
			END AS Double))) AS Text)) AS Decimal(11,5))) < Decimal('0', 11, 5)
				THEN Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(Decimal('0.00005', 5, 5) AS Decimal(11,5))) * Unwrap(CAST(Unwrap(CAST(Math::Pow(Double('10'), Unwrap(CAST(CASE
				WHEN r.P > 5 THEN 5
				ELSE r.P
			END AS Double))) AS Text)) AS Decimal(11,5))) AS Decimal(11,0))) - Decimal('1', 11, 0) AS Decimal(11,5)))
			ELSE Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(Decimal('0.00005', 5, 5) AS Decimal(11,5))) * Unwrap(CAST(Unwrap(CAST(Math::Pow(Double('10'), Unwrap(CAST(CASE
				WHEN r.P > 5 THEN 5
				ELSE r.P
			END AS Double))) AS Text)) AS Decimal(11,5))) AS Decimal(11,0))) AS Decimal(11,5)))
		END / Unwrap(CAST(Unwrap(CAST(Math::Pow(Double('10'), Unwrap(CAST(CASE
			WHEN r.P > 5 THEN 5
			ELSE r.P
		END AS Double))) AS Text)) AS Decimal(11,5))) AS Decimal(5,5)))
		ELSE Unwrap(CAST(Ensure(Unwrap(CAST(Decimal('0.00005', 5, 5) AS Decimal(35,35))) * Unwrap(CAST(Unwrap(CAST(Math::Pow(Double('10'), Unwrap(CAST(Ensure(r.P, r.P >= -30, 'ROUND precision is out of range for Decimal(5,5)'u) AS Double))) AS Text)) AS Decimal(35,35))) - Unwrap(CAST(Decimal('0.00005', 5, 5) AS Decimal(35,35))) * Unwrap(CAST(Unwrap(CAST(Math::Pow(Double('10'), Unwrap(CAST(Ensure(r.P, r.P >= -30, 'ROUND precision is out of range for Decimal(5,5)'u) AS Double))) AS Text)) AS Decimal(35,35))), Unwrap(CAST(Decimal('0.00005', 5, 5) AS Decimal(35,35))) * Unwrap(CAST(Unwrap(CAST(Math::Pow(Double('10'), Unwrap(CAST(Ensure(r.P, r.P >= -30, 'ROUND precision is out of range for Decimal(5,5)'u) AS Double))) AS Text)) AS Decimal(35,35))) < Decimal('0.5', 35, 35) AND Unwrap(CAST(Decimal('0.00005', 5, 5) AS Decimal(35,35))) * Unwrap(CAST(Unwrap(CAST(Math::Pow(Double('10'), Unwrap(CAST(Ensure(r.P, r.P >= -30, 'ROUND precision is out of range for Decimal(5,5)'u) AS Double))) AS Text)) AS Decimal(35,35))) > Decimal('-0.5', 35, 35), 'ROUND result is out of range for Decimal(35,35)'u) / Unwrap(CAST(Unwrap(CAST(Math::Pow(Double('10'), Unwrap(CAST(Ensure(r.P, r.P >= -30, 'ROUND precision is out of range for Decimal(5,5)'u) AS Double))) AS Text)) AS Decimal(35,35))) AS Decimal(5,5)))
	END AS Decimal(18,4))) + r.D as AwayTiny
FROM
	RoundValueScale r
LIMIT 2

