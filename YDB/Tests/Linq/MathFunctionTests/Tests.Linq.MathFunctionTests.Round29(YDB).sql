-- YDB Ydb
SELECT
	CASE
		WHEN r.P < -13 THEN Unwrap(CAST(Ensure(r.D35s2 * r.D35s2 - r.D35s2 * r.D35s2, r.D35s2 * r.D35s2 < Decimal('10000000000000', 35, 0) AND r.D35s2 * r.D35s2 > Decimal('-10000000000000', 35, 0), 'ROUND value is out of range for Decimal(22,9)'u) AS Decimal(22,9)))
		WHEN r.P >= 0 THEN Unwrap(CAST(CASE
			WHEN Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(r.D35s2 * r.D35s2 AS Decimal(31,9))) * Unwrap(CAST(Unwrap(CAST(Math::Pow(Double('10'), Unwrap(CAST(CASE
				WHEN r.P > 9 THEN 9
				ELSE r.P
			END AS Double))) AS Text)) AS Decimal(31,9))) AS Decimal(31,0))) AS Decimal(31,9))) - Unwrap(CAST(r.D35s2 * r.D35s2 AS Decimal(31,9))) * Unwrap(CAST(Unwrap(CAST(Math::Pow(Double('10'), Unwrap(CAST(CASE
				WHEN r.P > 9 THEN 9
				ELSE r.P
			END AS Double))) AS Text)) AS Decimal(31,9))) = Decimal('-0.5', 31, 9) AND Unwrap(CAST(r.D35s2 * r.D35s2 AS Decimal(31,9))) * Unwrap(CAST(Unwrap(CAST(Math::Pow(Double('10'), Unwrap(CAST(CASE
				WHEN r.P > 9 THEN 9
				ELSE r.P
			END AS Double))) AS Text)) AS Decimal(31,9))) > Decimal('0', 31, 9)
				THEN Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(r.D35s2 * r.D35s2 AS Decimal(31,9))) * Unwrap(CAST(Unwrap(CAST(Math::Pow(Double('10'), Unwrap(CAST(CASE
				WHEN r.P > 9 THEN 9
				ELSE r.P
			END AS Double))) AS Text)) AS Decimal(31,9))) AS Decimal(31,0))) + Decimal('1', 31, 0) AS Decimal(31,9)))
			WHEN Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(r.D35s2 * r.D35s2 AS Decimal(31,9))) * Unwrap(CAST(Unwrap(CAST(Math::Pow(Double('10'), Unwrap(CAST(CASE
				WHEN r.P > 9 THEN 9
				ELSE r.P
			END AS Double))) AS Text)) AS Decimal(31,9))) AS Decimal(31,0))) AS Decimal(31,9))) - Unwrap(CAST(r.D35s2 * r.D35s2 AS Decimal(31,9))) * Unwrap(CAST(Unwrap(CAST(Math::Pow(Double('10'), Unwrap(CAST(CASE
				WHEN r.P > 9 THEN 9
				ELSE r.P
			END AS Double))) AS Text)) AS Decimal(31,9))) = Decimal('0.5', 31, 9) AND Unwrap(CAST(r.D35s2 * r.D35s2 AS Decimal(31,9))) * Unwrap(CAST(Unwrap(CAST(Math::Pow(Double('10'), Unwrap(CAST(CASE
				WHEN r.P > 9 THEN 9
				ELSE r.P
			END AS Double))) AS Text)) AS Decimal(31,9))) < Decimal('0', 31, 9)
				THEN Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(r.D35s2 * r.D35s2 AS Decimal(31,9))) * Unwrap(CAST(Unwrap(CAST(Math::Pow(Double('10'), Unwrap(CAST(CASE
				WHEN r.P > 9 THEN 9
				ELSE r.P
			END AS Double))) AS Text)) AS Decimal(31,9))) AS Decimal(31,0))) - Decimal('1', 31, 0) AS Decimal(31,9)))
			ELSE Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(r.D35s2 * r.D35s2 AS Decimal(31,9))) * Unwrap(CAST(Unwrap(CAST(Math::Pow(Double('10'), Unwrap(CAST(CASE
				WHEN r.P > 9 THEN 9
				ELSE r.P
			END AS Double))) AS Text)) AS Decimal(31,9))) AS Decimal(31,0))) AS Decimal(31,9)))
		END / Unwrap(CAST(Unwrap(CAST(Math::Pow(Double('10'), Unwrap(CAST(CASE
			WHEN r.P > 9 THEN 9
			ELSE r.P
		END AS Double))) AS Text)) AS Decimal(31,9))) AS Decimal(22,9)))
		ELSE Unwrap(CAST(CASE
			WHEN Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(r.D35s2 * r.D35s2 AS Decimal(35,22))) * Unwrap(CAST(Unwrap(CAST(Math::Pow(Double('10'), Unwrap(CAST(Ensure(r.P, r.P >= -13, 'ROUND precision is out of range for Decimal(22,9)'u) AS Double))) AS Text)) AS Decimal(35,22))) AS Decimal(35,0))) AS Decimal(35,22))) - Unwrap(CAST(r.D35s2 * r.D35s2 AS Decimal(35,22))) * Unwrap(CAST(Unwrap(CAST(Math::Pow(Double('10'), Unwrap(CAST(Ensure(r.P, r.P >= -13, 'ROUND precision is out of range for Decimal(22,9)'u) AS Double))) AS Text)) AS Decimal(35,22))) = Decimal('-0.5', 35, 22) AND Unwrap(CAST(r.D35s2 * r.D35s2 AS Decimal(35,22))) * Unwrap(CAST(Unwrap(CAST(Math::Pow(Double('10'), Unwrap(CAST(Ensure(r.P, r.P >= -13, 'ROUND precision is out of range for Decimal(22,9)'u) AS Double))) AS Text)) AS Decimal(35,22))) > Decimal('0', 35, 22)
				THEN Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(r.D35s2 * r.D35s2 AS Decimal(35,22))) * Unwrap(CAST(Unwrap(CAST(Math::Pow(Double('10'), Unwrap(CAST(Ensure(r.P, r.P >= -13, 'ROUND precision is out of range for Decimal(22,9)'u) AS Double))) AS Text)) AS Decimal(35,22))) AS Decimal(35,0))) + Decimal('1', 35, 0) AS Decimal(35,22)))
			WHEN Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(r.D35s2 * r.D35s2 AS Decimal(35,22))) * Unwrap(CAST(Unwrap(CAST(Math::Pow(Double('10'), Unwrap(CAST(Ensure(r.P, r.P >= -13, 'ROUND precision is out of range for Decimal(22,9)'u) AS Double))) AS Text)) AS Decimal(35,22))) AS Decimal(35,0))) AS Decimal(35,22))) - Unwrap(CAST(r.D35s2 * r.D35s2 AS Decimal(35,22))) * Unwrap(CAST(Unwrap(CAST(Math::Pow(Double('10'), Unwrap(CAST(Ensure(r.P, r.P >= -13, 'ROUND precision is out of range for Decimal(22,9)'u) AS Double))) AS Text)) AS Decimal(35,22))) = Decimal('0.5', 35, 22) AND Unwrap(CAST(r.D35s2 * r.D35s2 AS Decimal(35,22))) * Unwrap(CAST(Unwrap(CAST(Math::Pow(Double('10'), Unwrap(CAST(Ensure(r.P, r.P >= -13, 'ROUND precision is out of range for Decimal(22,9)'u) AS Double))) AS Text)) AS Decimal(35,22))) < Decimal('0', 35, 22)
				THEN Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(r.D35s2 * r.D35s2 AS Decimal(35,22))) * Unwrap(CAST(Unwrap(CAST(Math::Pow(Double('10'), Unwrap(CAST(Ensure(r.P, r.P >= -13, 'ROUND precision is out of range for Decimal(22,9)'u) AS Double))) AS Text)) AS Decimal(35,22))) AS Decimal(35,0))) - Decimal('1', 35, 0) AS Decimal(35,22)))
			ELSE Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(r.D35s2 * r.D35s2 AS Decimal(35,22))) * Unwrap(CAST(Unwrap(CAST(Math::Pow(Double('10'), Unwrap(CAST(Ensure(r.P, r.P >= -13, 'ROUND precision is out of range for Decimal(22,9)'u) AS Double))) AS Text)) AS Decimal(35,22))) AS Decimal(35,0))) AS Decimal(35,22)))
		END / Unwrap(CAST(Unwrap(CAST(Math::Pow(Double('10'), Unwrap(CAST(Ensure(r.P, r.P >= -13, 'ROUND precision is out of range for Decimal(22,9)'u) AS Double))) AS Text)) AS Decimal(35,22))) AS Decimal(22,9)))
	END as c1
FROM
	RoundNegativeDynamicWide r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	Unwrap(CAST(CASE
		WHEN Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(r.D35s2 * r.D35s2 AS Decimal(24,9))) * Decimal('100', 24, 9) AS Decimal(24,0))) AS Decimal(24,9))) - Unwrap(CAST(r.D35s2 * r.D35s2 AS Decimal(24,9))) * Decimal('100', 24, 9) = Decimal('-0.5', 24, 9) AND Unwrap(CAST(r.D35s2 * r.D35s2 AS Decimal(24,9))) * Decimal('100', 24, 9) > Decimal('0', 24, 9)
			THEN Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(r.D35s2 * r.D35s2 AS Decimal(24,9))) * Decimal('100', 24, 9) AS Decimal(24,0))) + Decimal('1', 24, 0) AS Decimal(24,9)))
		WHEN Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(r.D35s2 * r.D35s2 AS Decimal(24,9))) * Decimal('100', 24, 9) AS Decimal(24,0))) AS Decimal(24,9))) - Unwrap(CAST(r.D35s2 * r.D35s2 AS Decimal(24,9))) * Decimal('100', 24, 9) = Decimal('0.5', 24, 9) AND Unwrap(CAST(r.D35s2 * r.D35s2 AS Decimal(24,9))) * Decimal('100', 24, 9) < Decimal('0', 24, 9)
			THEN Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(r.D35s2 * r.D35s2 AS Decimal(24,9))) * Decimal('100', 24, 9) AS Decimal(24,0))) - Decimal('1', 24, 0) AS Decimal(24,9)))
		ELSE Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(r.D35s2 * r.D35s2 AS Decimal(24,9))) * Decimal('100', 24, 9) AS Decimal(24,0))) AS Decimal(24,9)))
	END / Decimal('100', 24, 9) AS Decimal(22,9))) + r.D22s9 as c1
FROM
	RoundNegativeDynamicWide r
ORDER BY
	r.Id

