-- YDB Ydb
SELECT
	CASE
		WHEN r.P < -13 THEN Unwrap(CAST(Ensure(r.D22s9 - r.D22s9, r.D22s9 < Decimal('10000000000000', 35, 0) AND r.D22s9 > Decimal('-10000000000000', 35, 0), 'ROUND value is out of range for Decimal(22,9)'u) AS Decimal(22,9)))
		WHEN r.P >= 0 THEN Unwrap(CAST(CASE
			WHEN Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(r.D22s9 AS Decimal(31,9))) * Unwrap(CAST(Unwrap(CAST(Math::Pow(Double('10'), Unwrap(CAST(CASE
				WHEN r.P > 9 THEN 9
				ELSE r.P
			END AS Double))) AS Text)) AS Decimal(31,9))) AS Decimal(31,0))) AS Decimal(31,9))) - Unwrap(CAST(r.D22s9 AS Decimal(31,9))) * Unwrap(CAST(Unwrap(CAST(Math::Pow(Double('10'), Unwrap(CAST(CASE
				WHEN r.P > 9 THEN 9
				ELSE r.P
			END AS Double))) AS Text)) AS Decimal(31,9))) = Decimal('-0.5', 31, 9) AND Unwrap(CAST(r.D22s9 AS Decimal(31,9))) * Unwrap(CAST(Unwrap(CAST(Math::Pow(Double('10'), Unwrap(CAST(CASE
				WHEN r.P > 9 THEN 9
				ELSE r.P
			END AS Double))) AS Text)) AS Decimal(31,9))) > Decimal('0', 31, 9)
				THEN Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(r.D22s9 AS Decimal(31,9))) * Unwrap(CAST(Unwrap(CAST(Math::Pow(Double('10'), Unwrap(CAST(CASE
				WHEN r.P > 9 THEN 9
				ELSE r.P
			END AS Double))) AS Text)) AS Decimal(31,9))) AS Decimal(31,0))) + Decimal('1', 31, 0) AS Decimal(31,9)))
			WHEN Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(r.D22s9 AS Decimal(31,9))) * Unwrap(CAST(Unwrap(CAST(Math::Pow(Double('10'), Unwrap(CAST(CASE
				WHEN r.P > 9 THEN 9
				ELSE r.P
			END AS Double))) AS Text)) AS Decimal(31,9))) AS Decimal(31,0))) AS Decimal(31,9))) - Unwrap(CAST(r.D22s9 AS Decimal(31,9))) * Unwrap(CAST(Unwrap(CAST(Math::Pow(Double('10'), Unwrap(CAST(CASE
				WHEN r.P > 9 THEN 9
				ELSE r.P
			END AS Double))) AS Text)) AS Decimal(31,9))) = Decimal('0.5', 31, 9) AND Unwrap(CAST(r.D22s9 AS Decimal(31,9))) * Unwrap(CAST(Unwrap(CAST(Math::Pow(Double('10'), Unwrap(CAST(CASE
				WHEN r.P > 9 THEN 9
				ELSE r.P
			END AS Double))) AS Text)) AS Decimal(31,9))) < Decimal('0', 31, 9)
				THEN Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(r.D22s9 AS Decimal(31,9))) * Unwrap(CAST(Unwrap(CAST(Math::Pow(Double('10'), Unwrap(CAST(CASE
				WHEN r.P > 9 THEN 9
				ELSE r.P
			END AS Double))) AS Text)) AS Decimal(31,9))) AS Decimal(31,0))) - Decimal('1', 31, 0) AS Decimal(31,9)))
			ELSE Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(r.D22s9 AS Decimal(31,9))) * Unwrap(CAST(Unwrap(CAST(Math::Pow(Double('10'), Unwrap(CAST(CASE
				WHEN r.P > 9 THEN 9
				ELSE r.P
			END AS Double))) AS Text)) AS Decimal(31,9))) AS Decimal(31,0))) AS Decimal(31,9)))
		END / Unwrap(CAST(Unwrap(CAST(Math::Pow(Double('10'), Unwrap(CAST(CASE
			WHEN r.P > 9 THEN 9
			ELSE r.P
		END AS Double))) AS Text)) AS Decimal(31,9))) AS Decimal(22,9)))
		ELSE Unwrap(CAST(CASE
			WHEN Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(r.D22s9 AS Decimal(35,22))) * Unwrap(CAST(Unwrap(CAST(Math::Pow(Double('10'), Unwrap(CAST(Ensure(r.P, r.P >= -13, 'ROUND precision is out of range for Decimal(22,9)'u) AS Double))) AS Text)) AS Decimal(35,22))) AS Decimal(35,0))) AS Decimal(35,22))) - Unwrap(CAST(r.D22s9 AS Decimal(35,22))) * Unwrap(CAST(Unwrap(CAST(Math::Pow(Double('10'), Unwrap(CAST(Ensure(r.P, r.P >= -13, 'ROUND precision is out of range for Decimal(22,9)'u) AS Double))) AS Text)) AS Decimal(35,22))) = Decimal('-0.5', 35, 22) AND Unwrap(CAST(r.D22s9 AS Decimal(35,22))) * Unwrap(CAST(Unwrap(CAST(Math::Pow(Double('10'), Unwrap(CAST(Ensure(r.P, r.P >= -13, 'ROUND precision is out of range for Decimal(22,9)'u) AS Double))) AS Text)) AS Decimal(35,22))) > Decimal('0', 35, 22)
				THEN Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(r.D22s9 AS Decimal(35,22))) * Unwrap(CAST(Unwrap(CAST(Math::Pow(Double('10'), Unwrap(CAST(Ensure(r.P, r.P >= -13, 'ROUND precision is out of range for Decimal(22,9)'u) AS Double))) AS Text)) AS Decimal(35,22))) AS Decimal(35,0))) + Decimal('1', 35, 0) AS Decimal(35,22)))
			WHEN Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(r.D22s9 AS Decimal(35,22))) * Unwrap(CAST(Unwrap(CAST(Math::Pow(Double('10'), Unwrap(CAST(Ensure(r.P, r.P >= -13, 'ROUND precision is out of range for Decimal(22,9)'u) AS Double))) AS Text)) AS Decimal(35,22))) AS Decimal(35,0))) AS Decimal(35,22))) - Unwrap(CAST(r.D22s9 AS Decimal(35,22))) * Unwrap(CAST(Unwrap(CAST(Math::Pow(Double('10'), Unwrap(CAST(Ensure(r.P, r.P >= -13, 'ROUND precision is out of range for Decimal(22,9)'u) AS Double))) AS Text)) AS Decimal(35,22))) = Decimal('0.5', 35, 22) AND Unwrap(CAST(r.D22s9 AS Decimal(35,22))) * Unwrap(CAST(Unwrap(CAST(Math::Pow(Double('10'), Unwrap(CAST(Ensure(r.P, r.P >= -13, 'ROUND precision is out of range for Decimal(22,9)'u) AS Double))) AS Text)) AS Decimal(35,22))) < Decimal('0', 35, 22)
				THEN Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(r.D22s9 AS Decimal(35,22))) * Unwrap(CAST(Unwrap(CAST(Math::Pow(Double('10'), Unwrap(CAST(Ensure(r.P, r.P >= -13, 'ROUND precision is out of range for Decimal(22,9)'u) AS Double))) AS Text)) AS Decimal(35,22))) AS Decimal(35,0))) - Decimal('1', 35, 0) AS Decimal(35,22)))
			ELSE Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(r.D22s9 AS Decimal(35,22))) * Unwrap(CAST(Unwrap(CAST(Math::Pow(Double('10'), Unwrap(CAST(Ensure(r.P, r.P >= -13, 'ROUND precision is out of range for Decimal(22,9)'u) AS Double))) AS Text)) AS Decimal(35,22))) AS Decimal(35,0))) AS Decimal(35,22)))
		END / Unwrap(CAST(Unwrap(CAST(Math::Pow(Double('10'), Unwrap(CAST(Ensure(r.P, r.P >= -13, 'ROUND precision is out of range for Decimal(22,9)'u) AS Double))) AS Text)) AS Decimal(35,22))) AS Decimal(22,9)))
	END as Away,
	CASE
		WHEN r.P < -13 THEN Unwrap(CAST(Ensure(r.D22s9 - r.D22s9, r.D22s9 < Decimal('10000000000000', 35, 0) AND r.D22s9 > Decimal('-10000000000000', 35, 0), 'ROUND value is out of range for Decimal(22,9)'u) AS Decimal(22,9)))
		WHEN r.P >= 0 THEN Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(r.D22s9 AS Decimal(31,9))) * Unwrap(CAST(Unwrap(CAST(Math::Pow(Double('10'), Unwrap(CAST(CASE
			WHEN r.P > 9 THEN 9
			ELSE r.P
		END AS Double))) AS Text)) AS Decimal(31,9))) AS Decimal(31,0))) AS Decimal(31,9))) / Unwrap(CAST(Unwrap(CAST(Math::Pow(Double('10'), Unwrap(CAST(CASE
			WHEN r.P > 9 THEN 9
			ELSE r.P
		END AS Double))) AS Text)) AS Decimal(31,9))) AS Decimal(22,9)))
		ELSE Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(r.D22s9 AS Decimal(35,22))) * Unwrap(CAST(Unwrap(CAST(Math::Pow(Double('10'), Unwrap(CAST(Ensure(r.P, r.P >= -13, 'ROUND precision is out of range for Decimal(22,9)'u) AS Double))) AS Text)) AS Decimal(35,22))) AS Decimal(35,0))) AS Decimal(35,22))) / Unwrap(CAST(Unwrap(CAST(Math::Pow(Double('10'), Unwrap(CAST(Ensure(r.P, r.P >= -13, 'ROUND precision is out of range for Decimal(22,9)'u) AS Double))) AS Text)) AS Decimal(35,22))) AS Decimal(22,9)))
	END as Even
FROM
	RoundNegativeDynamicWide r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	CASE
		WHEN r.P < -13 AND r.Id <= 0 THEN Unwrap(CAST(Ensure(r.D22s9 - r.D22s9, r.D22s9 < Decimal('10000000000000', 35, 0) AND r.D22s9 > Decimal('-10000000000000', 35, 0), 'ROUND value is out of range for Decimal(22,9)'u) AS Decimal(22,9)))
		WHEN r.P >= 0 AND r.Id <= 0 THEN CAST(CASE
			WHEN CAST(CAST(Unwrap(CAST(r.D22s9 AS Decimal(31,9))) * CAST(CAST(Math::Pow(Double('10'), CAST(CASE
				WHEN r.P > 9 AND r.Id <= 0 THEN 9
				WHEN r.Id > 0 THEN NULL
				ELSE r.P
			END AS Double)) AS Text) AS Decimal(31,9)) AS Decimal(31,0)) AS Decimal(31,9)) - Unwrap(CAST(r.D22s9 AS Decimal(31,9))) * CAST(CAST(Math::Pow(Double('10'), CAST(CASE
				WHEN r.P > 9 AND r.Id <= 0 THEN 9
				WHEN r.Id > 0 THEN NULL
				ELSE r.P
			END AS Double)) AS Text) AS Decimal(31,9)) = Decimal('-0.5', 31, 9) AND Unwrap(CAST(r.D22s9 AS Decimal(31,9))) * CAST(CAST(Math::Pow(Double('10'), CAST(CASE
				WHEN r.P > 9 AND r.Id <= 0 THEN 9
				WHEN r.Id > 0 THEN NULL
				ELSE r.P
			END AS Double)) AS Text) AS Decimal(31,9)) > Decimal('0', 31, 9)
				THEN CAST(CAST(Unwrap(CAST(r.D22s9 AS Decimal(31,9))) * CAST(CAST(Math::Pow(Double('10'), CAST(CASE
				WHEN r.P > 9 AND r.Id <= 0 THEN 9
				WHEN r.Id > 0 THEN NULL
				ELSE r.P
			END AS Double)) AS Text) AS Decimal(31,9)) AS Decimal(31,0)) + Decimal('1', 31, 0) AS Decimal(31,9))
			WHEN CAST(CAST(Unwrap(CAST(r.D22s9 AS Decimal(31,9))) * CAST(CAST(Math::Pow(Double('10'), CAST(CASE
				WHEN r.P > 9 AND r.Id <= 0 THEN 9
				WHEN r.Id > 0 THEN NULL
				ELSE r.P
			END AS Double)) AS Text) AS Decimal(31,9)) AS Decimal(31,0)) AS Decimal(31,9)) - Unwrap(CAST(r.D22s9 AS Decimal(31,9))) * CAST(CAST(Math::Pow(Double('10'), CAST(CASE
				WHEN r.P > 9 AND r.Id <= 0 THEN 9
				WHEN r.Id > 0 THEN NULL
				ELSE r.P
			END AS Double)) AS Text) AS Decimal(31,9)) = Decimal('0.5', 31, 9) AND Unwrap(CAST(r.D22s9 AS Decimal(31,9))) * CAST(CAST(Math::Pow(Double('10'), CAST(CASE
				WHEN r.P > 9 AND r.Id <= 0 THEN 9
				WHEN r.Id > 0 THEN NULL
				ELSE r.P
			END AS Double)) AS Text) AS Decimal(31,9)) < Decimal('0', 31, 9)
				THEN CAST(CAST(Unwrap(CAST(r.D22s9 AS Decimal(31,9))) * CAST(CAST(Math::Pow(Double('10'), CAST(CASE
				WHEN r.P > 9 AND r.Id <= 0 THEN 9
				WHEN r.Id > 0 THEN NULL
				ELSE r.P
			END AS Double)) AS Text) AS Decimal(31,9)) AS Decimal(31,0)) - Decimal('1', 31, 0) AS Decimal(31,9))
			ELSE CAST(CAST(Unwrap(CAST(r.D22s9 AS Decimal(31,9))) * CAST(CAST(Math::Pow(Double('10'), CAST(CASE
				WHEN r.P > 9 AND r.Id <= 0 THEN 9
				WHEN r.Id > 0 THEN NULL
				ELSE r.P
			END AS Double)) AS Text) AS Decimal(31,9)) AS Decimal(31,0)) AS Decimal(31,9))
		END / CAST(CAST(Math::Pow(Double('10'), CAST(CASE
			WHEN r.P > 9 AND r.Id <= 0 THEN 9
			WHEN r.Id > 0 THEN NULL
			ELSE r.P
		END AS Double)) AS Text) AS Decimal(31,9)) AS Decimal(22,9))
		ELSE CAST(CASE
			WHEN CAST(CAST(Unwrap(CAST(r.D22s9 AS Decimal(35,22))) * CAST(CAST(Math::Pow(Double('10'), CAST(Ensure(CASE
				WHEN r.Id > 0 THEN NULL
				ELSE r.P
			END, r.P >= -13 AND r.Id <= 0 OR r.Id > 0, 'ROUND precision is out of range for Decimal(22,9)'u) AS Double)) AS Text) AS Decimal(35,22)) AS Decimal(35,0)) AS Decimal(35,22)) - Unwrap(CAST(r.D22s9 AS Decimal(35,22))) * CAST(CAST(Math::Pow(Double('10'), CAST(Ensure(CASE
				WHEN r.Id > 0 THEN NULL
				ELSE r.P
			END, r.P >= -13 AND r.Id <= 0 OR r.Id > 0, 'ROUND precision is out of range for Decimal(22,9)'u) AS Double)) AS Text) AS Decimal(35,22)) = Decimal('-0.5', 35, 22) AND Unwrap(CAST(r.D22s9 AS Decimal(35,22))) * CAST(CAST(Math::Pow(Double('10'), CAST(Ensure(CASE
				WHEN r.Id > 0 THEN NULL
				ELSE r.P
			END, r.P >= -13 AND r.Id <= 0 OR r.Id > 0, 'ROUND precision is out of range for Decimal(22,9)'u) AS Double)) AS Text) AS Decimal(35,22)) > Decimal('0', 35, 22)
				THEN CAST(CAST(Unwrap(CAST(r.D22s9 AS Decimal(35,22))) * CAST(CAST(Math::Pow(Double('10'), CAST(Ensure(CASE
				WHEN r.Id > 0 THEN NULL
				ELSE r.P
			END, r.P >= -13 AND r.Id <= 0 OR r.Id > 0, 'ROUND precision is out of range for Decimal(22,9)'u) AS Double)) AS Text) AS Decimal(35,22)) AS Decimal(35,0)) + Decimal('1', 35, 0) AS Decimal(35,22))
			WHEN CAST(CAST(Unwrap(CAST(r.D22s9 AS Decimal(35,22))) * CAST(CAST(Math::Pow(Double('10'), CAST(Ensure(CASE
				WHEN r.Id > 0 THEN NULL
				ELSE r.P
			END, r.P >= -13 AND r.Id <= 0 OR r.Id > 0, 'ROUND precision is out of range for Decimal(22,9)'u) AS Double)) AS Text) AS Decimal(35,22)) AS Decimal(35,0)) AS Decimal(35,22)) - Unwrap(CAST(r.D22s9 AS Decimal(35,22))) * CAST(CAST(Math::Pow(Double('10'), CAST(Ensure(CASE
				WHEN r.Id > 0 THEN NULL
				ELSE r.P
			END, r.P >= -13 AND r.Id <= 0 OR r.Id > 0, 'ROUND precision is out of range for Decimal(22,9)'u) AS Double)) AS Text) AS Decimal(35,22)) = Decimal('0.5', 35, 22) AND Unwrap(CAST(r.D22s9 AS Decimal(35,22))) * CAST(CAST(Math::Pow(Double('10'), CAST(Ensure(CASE
				WHEN r.Id > 0 THEN NULL
				ELSE r.P
			END, r.P >= -13 AND r.Id <= 0 OR r.Id > 0, 'ROUND precision is out of range for Decimal(22,9)'u) AS Double)) AS Text) AS Decimal(35,22)) < Decimal('0', 35, 22)
				THEN CAST(CAST(Unwrap(CAST(r.D22s9 AS Decimal(35,22))) * CAST(CAST(Math::Pow(Double('10'), CAST(Ensure(CASE
				WHEN r.Id > 0 THEN NULL
				ELSE r.P
			END, r.P >= -13 AND r.Id <= 0 OR r.Id > 0, 'ROUND precision is out of range for Decimal(22,9)'u) AS Double)) AS Text) AS Decimal(35,22)) AS Decimal(35,0)) - Decimal('1', 35, 0) AS Decimal(35,22))
			ELSE CAST(CAST(Unwrap(CAST(r.D22s9 AS Decimal(35,22))) * CAST(CAST(Math::Pow(Double('10'), CAST(Ensure(CASE
				WHEN r.Id > 0 THEN NULL
				ELSE r.P
			END, r.P >= -13 AND r.Id <= 0 OR r.Id > 0, 'ROUND precision is out of range for Decimal(22,9)'u) AS Double)) AS Text) AS Decimal(35,22)) AS Decimal(35,0)) AS Decimal(35,22))
		END / CAST(CAST(Math::Pow(Double('10'), CAST(Ensure(CASE
			WHEN r.Id > 0 THEN NULL
			ELSE r.P
		END, r.P >= -13 AND r.Id <= 0 OR r.Id > 0, 'ROUND precision is out of range for Decimal(22,9)'u) AS Double)) AS Text) AS Decimal(35,22)) AS Decimal(22,9))
	END as c1
FROM
	RoundNegativeDynamicWide r

-- YDB Ydb
SELECT
	CASE
		WHEN r.P < -33 THEN Unwrap(CAST(Ensure(r.D35s2 - r.D35s2, r.D35s2 < Decimal('10000000000000000000000000000', 35, 0) AND r.D35s2 > Decimal('-10000000000000000000000000000', 35, 0), 'ROUND value is out of range for Decimal(35,2)'u) AS Decimal(35,2)))
		WHEN r.P >= 0 THEN CASE
			WHEN Unwrap(CAST(Unwrap(CAST(r.D35s2 * Unwrap(CAST(Unwrap(CAST(Math::Pow(Double('10'), Unwrap(CAST(CASE
				WHEN r.P > 2 THEN 2
				ELSE r.P
			END AS Double))) AS Text)) AS Decimal(35,2))) AS Decimal(35,0))) AS Decimal(35,2))) - r.D35s2 * Unwrap(CAST(Unwrap(CAST(Math::Pow(Double('10'), Unwrap(CAST(CASE
				WHEN r.P > 2 THEN 2
				ELSE r.P
			END AS Double))) AS Text)) AS Decimal(35,2))) = Decimal('-0.5', 35, 2) AND r.D35s2 * Unwrap(CAST(Unwrap(CAST(Math::Pow(Double('10'), Unwrap(CAST(CASE
				WHEN r.P > 2 THEN 2
				ELSE r.P
			END AS Double))) AS Text)) AS Decimal(35,2))) > Decimal('0', 35, 2)
				THEN Unwrap(CAST(Unwrap(CAST(r.D35s2 * Unwrap(CAST(Unwrap(CAST(Math::Pow(Double('10'), Unwrap(CAST(CASE
				WHEN r.P > 2 THEN 2
				ELSE r.P
			END AS Double))) AS Text)) AS Decimal(35,2))) AS Decimal(35,0))) + Decimal('1', 35, 0) AS Decimal(35,2)))
			WHEN Unwrap(CAST(Unwrap(CAST(r.D35s2 * Unwrap(CAST(Unwrap(CAST(Math::Pow(Double('10'), Unwrap(CAST(CASE
				WHEN r.P > 2 THEN 2
				ELSE r.P
			END AS Double))) AS Text)) AS Decimal(35,2))) AS Decimal(35,0))) AS Decimal(35,2))) - r.D35s2 * Unwrap(CAST(Unwrap(CAST(Math::Pow(Double('10'), Unwrap(CAST(CASE
				WHEN r.P > 2 THEN 2
				ELSE r.P
			END AS Double))) AS Text)) AS Decimal(35,2))) = Decimal('0.5', 35, 2) AND r.D35s2 * Unwrap(CAST(Unwrap(CAST(Math::Pow(Double('10'), Unwrap(CAST(CASE
				WHEN r.P > 2 THEN 2
				ELSE r.P
			END AS Double))) AS Text)) AS Decimal(35,2))) < Decimal('0', 35, 2)
				THEN Unwrap(CAST(Unwrap(CAST(r.D35s2 * Unwrap(CAST(Unwrap(CAST(Math::Pow(Double('10'), Unwrap(CAST(CASE
				WHEN r.P > 2 THEN 2
				ELSE r.P
			END AS Double))) AS Text)) AS Decimal(35,2))) AS Decimal(35,0))) - Decimal('1', 35, 0) AS Decimal(35,2)))
			ELSE Unwrap(CAST(Unwrap(CAST(r.D35s2 * Unwrap(CAST(Unwrap(CAST(Math::Pow(Double('10'), Unwrap(CAST(CASE
				WHEN r.P > 2 THEN 2
				ELSE r.P
			END AS Double))) AS Text)) AS Decimal(35,2))) AS Decimal(35,0))) AS Decimal(35,2)))
		END / Unwrap(CAST(Unwrap(CAST(Math::Pow(Double('10'), Unwrap(CAST(CASE
			WHEN r.P > 2 THEN 2
			ELSE r.P
		END AS Double))) AS Text)) AS Decimal(35,2)))
		ELSE CASE
			WHEN Unwrap(CAST(Unwrap(CAST(r.D35s2 * Unwrap(CAST(Unwrap(CAST(Math::Pow(Double('10'), Unwrap(CAST(Ensure(r.P, r.P >= 0, 'ROUND precision is out of range for Decimal(35,2)'u) AS Double))) AS Text)) AS Decimal(35,2))) AS Decimal(35,0))) AS Decimal(35,2))) - r.D35s2 * Unwrap(CAST(Unwrap(CAST(Math::Pow(Double('10'), Unwrap(CAST(Ensure(r.P, r.P >= 0, 'ROUND precision is out of range for Decimal(35,2)'u) AS Double))) AS Text)) AS Decimal(35,2))) = Decimal('-0.5', 35, 2) AND r.D35s2 * Unwrap(CAST(Unwrap(CAST(Math::Pow(Double('10'), Unwrap(CAST(Ensure(r.P, r.P >= 0, 'ROUND precision is out of range for Decimal(35,2)'u) AS Double))) AS Text)) AS Decimal(35,2))) > Decimal('0', 35, 2)
				THEN Unwrap(CAST(Unwrap(CAST(r.D35s2 * Unwrap(CAST(Unwrap(CAST(Math::Pow(Double('10'), Unwrap(CAST(Ensure(r.P, r.P >= 0, 'ROUND precision is out of range for Decimal(35,2)'u) AS Double))) AS Text)) AS Decimal(35,2))) AS Decimal(35,0))) + Decimal('1', 35, 0) AS Decimal(35,2)))
			WHEN Unwrap(CAST(Unwrap(CAST(r.D35s2 * Unwrap(CAST(Unwrap(CAST(Math::Pow(Double('10'), Unwrap(CAST(Ensure(r.P, r.P >= 0, 'ROUND precision is out of range for Decimal(35,2)'u) AS Double))) AS Text)) AS Decimal(35,2))) AS Decimal(35,0))) AS Decimal(35,2))) - r.D35s2 * Unwrap(CAST(Unwrap(CAST(Math::Pow(Double('10'), Unwrap(CAST(Ensure(r.P, r.P >= 0, 'ROUND precision is out of range for Decimal(35,2)'u) AS Double))) AS Text)) AS Decimal(35,2))) = Decimal('0.5', 35, 2) AND r.D35s2 * Unwrap(CAST(Unwrap(CAST(Math::Pow(Double('10'), Unwrap(CAST(Ensure(r.P, r.P >= 0, 'ROUND precision is out of range for Decimal(35,2)'u) AS Double))) AS Text)) AS Decimal(35,2))) < Decimal('0', 35, 2)
				THEN Unwrap(CAST(Unwrap(CAST(r.D35s2 * Unwrap(CAST(Unwrap(CAST(Math::Pow(Double('10'), Unwrap(CAST(Ensure(r.P, r.P >= 0, 'ROUND precision is out of range for Decimal(35,2)'u) AS Double))) AS Text)) AS Decimal(35,2))) AS Decimal(35,0))) - Decimal('1', 35, 0) AS Decimal(35,2)))
			ELSE Unwrap(CAST(Unwrap(CAST(r.D35s2 * Unwrap(CAST(Unwrap(CAST(Math::Pow(Double('10'), Unwrap(CAST(Ensure(r.P, r.P >= 0, 'ROUND precision is out of range for Decimal(35,2)'u) AS Double))) AS Text)) AS Decimal(35,2))) AS Decimal(35,0))) AS Decimal(35,2)))
		END / Unwrap(CAST(Unwrap(CAST(Math::Pow(Double('10'), Unwrap(CAST(Ensure(r.P, r.P >= 0, 'ROUND precision is out of range for Decimal(35,2)'u) AS Double))) AS Text)) AS Decimal(35,2)))
	END as c1
FROM
	RoundNegativeDynamicWide r
WHERE
	r.P < 0

-- YDB Ydb
SELECT
	CASE
		WHEN r.P < -13 THEN Unwrap(CAST(Ensure(r.D22s9 - r.D22s9, r.D22s9 < Decimal('10000000000000', 35, 0) AND r.D22s9 > Decimal('-10000000000000', 35, 0), 'ROUND value is out of range for Decimal(22,9)'u) AS Decimal(22,9)))
		WHEN r.P >= 0 THEN Unwrap(CAST(CASE
			WHEN Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(r.D22s9 AS Decimal(31,9))) * Unwrap(CAST(Unwrap(CAST(Math::Pow(Double('10'), Unwrap(CAST(CASE
				WHEN r.P > 9 THEN 9
				ELSE r.P
			END AS Double))) AS Text)) AS Decimal(31,9))) AS Decimal(31,0))) AS Decimal(31,9))) - Unwrap(CAST(r.D22s9 AS Decimal(31,9))) * Unwrap(CAST(Unwrap(CAST(Math::Pow(Double('10'), Unwrap(CAST(CASE
				WHEN r.P > 9 THEN 9
				ELSE r.P
			END AS Double))) AS Text)) AS Decimal(31,9))) = Decimal('-0.5', 31, 9) AND Unwrap(CAST(r.D22s9 AS Decimal(31,9))) * Unwrap(CAST(Unwrap(CAST(Math::Pow(Double('10'), Unwrap(CAST(CASE
				WHEN r.P > 9 THEN 9
				ELSE r.P
			END AS Double))) AS Text)) AS Decimal(31,9))) > Decimal('0', 31, 9)
				THEN Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(r.D22s9 AS Decimal(31,9))) * Unwrap(CAST(Unwrap(CAST(Math::Pow(Double('10'), Unwrap(CAST(CASE
				WHEN r.P > 9 THEN 9
				ELSE r.P
			END AS Double))) AS Text)) AS Decimal(31,9))) AS Decimal(31,0))) + Decimal('1', 31, 0) AS Decimal(31,9)))
			WHEN Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(r.D22s9 AS Decimal(31,9))) * Unwrap(CAST(Unwrap(CAST(Math::Pow(Double('10'), Unwrap(CAST(CASE
				WHEN r.P > 9 THEN 9
				ELSE r.P
			END AS Double))) AS Text)) AS Decimal(31,9))) AS Decimal(31,0))) AS Decimal(31,9))) - Unwrap(CAST(r.D22s9 AS Decimal(31,9))) * Unwrap(CAST(Unwrap(CAST(Math::Pow(Double('10'), Unwrap(CAST(CASE
				WHEN r.P > 9 THEN 9
				ELSE r.P
			END AS Double))) AS Text)) AS Decimal(31,9))) = Decimal('0.5', 31, 9) AND Unwrap(CAST(r.D22s9 AS Decimal(31,9))) * Unwrap(CAST(Unwrap(CAST(Math::Pow(Double('10'), Unwrap(CAST(CASE
				WHEN r.P > 9 THEN 9
				ELSE r.P
			END AS Double))) AS Text)) AS Decimal(31,9))) < Decimal('0', 31, 9)
				THEN Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(r.D22s9 AS Decimal(31,9))) * Unwrap(CAST(Unwrap(CAST(Math::Pow(Double('10'), Unwrap(CAST(CASE
				WHEN r.P > 9 THEN 9
				ELSE r.P
			END AS Double))) AS Text)) AS Decimal(31,9))) AS Decimal(31,0))) - Decimal('1', 31, 0) AS Decimal(31,9)))
			ELSE Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(r.D22s9 AS Decimal(31,9))) * Unwrap(CAST(Unwrap(CAST(Math::Pow(Double('10'), Unwrap(CAST(CASE
				WHEN r.P > 9 THEN 9
				ELSE r.P
			END AS Double))) AS Text)) AS Decimal(31,9))) AS Decimal(31,0))) AS Decimal(31,9)))
		END / Unwrap(CAST(Unwrap(CAST(Math::Pow(Double('10'), Unwrap(CAST(CASE
			WHEN r.P > 9 THEN 9
			ELSE r.P
		END AS Double))) AS Text)) AS Decimal(31,9))) AS Decimal(22,9)))
		ELSE Unwrap(CAST(CASE
			WHEN Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(r.D22s9 AS Decimal(35,22))) * Unwrap(CAST(Unwrap(CAST(Math::Pow(Double('10'), Unwrap(CAST(Ensure(r.P, r.P >= -13, 'ROUND precision is out of range for Decimal(22,9)'u) AS Double))) AS Text)) AS Decimal(35,22))) AS Decimal(35,0))) AS Decimal(35,22))) - Unwrap(CAST(r.D22s9 AS Decimal(35,22))) * Unwrap(CAST(Unwrap(CAST(Math::Pow(Double('10'), Unwrap(CAST(Ensure(r.P, r.P >= -13, 'ROUND precision is out of range for Decimal(22,9)'u) AS Double))) AS Text)) AS Decimal(35,22))) = Decimal('-0.5', 35, 22) AND Unwrap(CAST(r.D22s9 AS Decimal(35,22))) * Unwrap(CAST(Unwrap(CAST(Math::Pow(Double('10'), Unwrap(CAST(Ensure(r.P, r.P >= -13, 'ROUND precision is out of range for Decimal(22,9)'u) AS Double))) AS Text)) AS Decimal(35,22))) > Decimal('0', 35, 22)
				THEN Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(r.D22s9 AS Decimal(35,22))) * Unwrap(CAST(Unwrap(CAST(Math::Pow(Double('10'), Unwrap(CAST(Ensure(r.P, r.P >= -13, 'ROUND precision is out of range for Decimal(22,9)'u) AS Double))) AS Text)) AS Decimal(35,22))) AS Decimal(35,0))) + Decimal('1', 35, 0) AS Decimal(35,22)))
			WHEN Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(r.D22s9 AS Decimal(35,22))) * Unwrap(CAST(Unwrap(CAST(Math::Pow(Double('10'), Unwrap(CAST(Ensure(r.P, r.P >= -13, 'ROUND precision is out of range for Decimal(22,9)'u) AS Double))) AS Text)) AS Decimal(35,22))) AS Decimal(35,0))) AS Decimal(35,22))) - Unwrap(CAST(r.D22s9 AS Decimal(35,22))) * Unwrap(CAST(Unwrap(CAST(Math::Pow(Double('10'), Unwrap(CAST(Ensure(r.P, r.P >= -13, 'ROUND precision is out of range for Decimal(22,9)'u) AS Double))) AS Text)) AS Decimal(35,22))) = Decimal('0.5', 35, 22) AND Unwrap(CAST(r.D22s9 AS Decimal(35,22))) * Unwrap(CAST(Unwrap(CAST(Math::Pow(Double('10'), Unwrap(CAST(Ensure(r.P, r.P >= -13, 'ROUND precision is out of range for Decimal(22,9)'u) AS Double))) AS Text)) AS Decimal(35,22))) < Decimal('0', 35, 22)
				THEN Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(r.D22s9 AS Decimal(35,22))) * Unwrap(CAST(Unwrap(CAST(Math::Pow(Double('10'), Unwrap(CAST(Ensure(r.P, r.P >= -13, 'ROUND precision is out of range for Decimal(22,9)'u) AS Double))) AS Text)) AS Decimal(35,22))) AS Decimal(35,0))) - Decimal('1', 35, 0) AS Decimal(35,22)))
			ELSE Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(r.D22s9 AS Decimal(35,22))) * Unwrap(CAST(Unwrap(CAST(Math::Pow(Double('10'), Unwrap(CAST(Ensure(r.P, r.P >= -13, 'ROUND precision is out of range for Decimal(22,9)'u) AS Double))) AS Text)) AS Decimal(35,22))) AS Decimal(35,0))) AS Decimal(35,22)))
		END / Unwrap(CAST(Unwrap(CAST(Math::Pow(Double('10'), Unwrap(CAST(Ensure(r.P, r.P >= -13, 'ROUND precision is out of range for Decimal(22,9)'u) AS Double))) AS Text)) AS Decimal(35,22))) AS Decimal(22,9)))
	END as c1
FROM
	RoundNegativeDynamicWideBoundary r

-- YDB Ydb
SELECT
	Unwrap(CAST(CASE
		WHEN Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(r.D22s9 AS Decimal(35,22))) * Decimal('0.0000000000001', 35, 22) AS Decimal(35,0))) AS Decimal(35,22))) - Unwrap(CAST(r.D22s9 AS Decimal(35,22))) * Decimal('0.0000000000001', 35, 22) = Decimal('-0.5', 35, 22) AND Unwrap(CAST(r.D22s9 AS Decimal(35,22))) * Decimal('0.0000000000001', 35, 22) > Decimal('0', 35, 22)
			THEN Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(r.D22s9 AS Decimal(35,22))) * Decimal('0.0000000000001', 35, 22) AS Decimal(35,0))) + Decimal('1', 35, 0) AS Decimal(35,22)))
		WHEN Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(r.D22s9 AS Decimal(35,22))) * Decimal('0.0000000000001', 35, 22) AS Decimal(35,0))) AS Decimal(35,22))) - Unwrap(CAST(r.D22s9 AS Decimal(35,22))) * Decimal('0.0000000000001', 35, 22) = Decimal('0.5', 35, 22) AND Unwrap(CAST(r.D22s9 AS Decimal(35,22))) * Decimal('0.0000000000001', 35, 22) < Decimal('0', 35, 22)
			THEN Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(r.D22s9 AS Decimal(35,22))) * Decimal('0.0000000000001', 35, 22) AS Decimal(35,0))) - Decimal('1', 35, 0) AS Decimal(35,22)))
		ELSE Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(r.D22s9 AS Decimal(35,22))) * Decimal('0.0000000000001', 35, 22) AS Decimal(35,0))) AS Decimal(35,22)))
	END / Decimal('0.0000000000001', 35, 22) AS Decimal(22,9))) as c1
FROM
	RoundNegativeDynamicWideBoundary r

-- YDB Ydb
SELECT
	Unwrap(CAST(CASE
		WHEN Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(r.D22s9 AS Decimal(35,22))) * Decimal('0.0000000000001', 35, 22) AS Decimal(35,0))) AS Decimal(35,22))) - Unwrap(CAST(r.D22s9 AS Decimal(35,22))) * Decimal('0.0000000000001', 35, 22) = Decimal('-0.5', 35, 22) AND Unwrap(CAST(r.D22s9 AS Decimal(35,22))) * Decimal('0.0000000000001', 35, 22) > Decimal('0', 35, 22)
			THEN Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(r.D22s9 AS Decimal(35,22))) * Decimal('0.0000000000001', 35, 22) AS Decimal(35,0))) + Decimal('1', 35, 0) AS Decimal(35,22)))
		WHEN Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(r.D22s9 AS Decimal(35,22))) * Decimal('0.0000000000001', 35, 22) AS Decimal(35,0))) AS Decimal(35,22))) - Unwrap(CAST(r.D22s9 AS Decimal(35,22))) * Decimal('0.0000000000001', 35, 22) = Decimal('0.5', 35, 22) AND Unwrap(CAST(r.D22s9 AS Decimal(35,22))) * Decimal('0.0000000000001', 35, 22) < Decimal('0', 35, 22)
			THEN Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(r.D22s9 AS Decimal(35,22))) * Decimal('0.0000000000001', 35, 22) AS Decimal(35,0))) - Decimal('1', 35, 0) AS Decimal(35,22)))
		ELSE Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(r.D22s9 AS Decimal(35,22))) * Decimal('0.0000000000001', 35, 22) AS Decimal(35,0))) AS Decimal(35,22)))
	END / Decimal('0.0000000000001', 35, 22) AS Decimal(22,9))) as c1
FROM
	RoundNegativeDynamicWide r
WHERE
	r.Id < 9

