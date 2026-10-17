-- YDB Ydb
SELECT
	CASE
		WHEN Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(r.D AS Decimal(30,9))) AS Decimal(30,0))) AS Decimal(30,9))) - Unwrap(CAST(r.D AS Decimal(30,9))) = Decimal('-0.5', 30, 9) AND Unwrap(CAST(r.D AS Decimal(30,9))) > Decimal('0', 30, 9)
			THEN Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(r.D AS Decimal(30,9))) AS Decimal(30,0))) + Decimal('1', 30, 0) AS Decimal(30,9)))
		WHEN Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(r.D AS Decimal(30,9))) AS Decimal(30,0))) AS Decimal(30,9))) - Unwrap(CAST(r.D AS Decimal(30,9))) = Decimal('0.5', 30, 9) AND Unwrap(CAST(r.D AS Decimal(30,9))) < Decimal('0', 30, 9)
			THEN Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(r.D AS Decimal(30,9))) AS Decimal(30,0))) - Decimal('1', 30, 0) AS Decimal(30,9)))
		ELSE Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(r.D AS Decimal(30,9))) AS Decimal(30,0))) AS Decimal(30,9)))
	END as D,
	Unwrap(CAST(CASE
		WHEN Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(r.D AS Decimal(32,9))) * Decimal('100', 32, 9) AS Decimal(32,0))) AS Decimal(32,9))) - Unwrap(CAST(r.D AS Decimal(32,9))) * Decimal('100', 32, 9) = Decimal('-0.5', 32, 9) AND Unwrap(CAST(r.D AS Decimal(32,9))) * Decimal('100', 32, 9) > Decimal('0', 32, 9)
			THEN Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(r.D AS Decimal(32,9))) * Decimal('100', 32, 9) AS Decimal(32,0))) + Decimal('1', 32, 0) AS Decimal(32,9)))
		WHEN Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(r.D AS Decimal(32,9))) * Decimal('100', 32, 9) AS Decimal(32,0))) AS Decimal(32,9))) - Unwrap(CAST(r.D AS Decimal(32,9))) * Decimal('100', 32, 9) = Decimal('0.5', 32, 9) AND Unwrap(CAST(r.D AS Decimal(32,9))) * Decimal('100', 32, 9) < Decimal('0', 32, 9)
			THEN Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(r.D AS Decimal(32,9))) * Decimal('100', 32, 9) AS Decimal(32,0))) - Decimal('1', 32, 0) AS Decimal(32,9)))
		ELSE Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(r.D AS Decimal(32,9))) * Decimal('100', 32, 9) AS Decimal(32,0))) AS Decimal(32,9)))
	END / Decimal('100', 32, 9) AS Decimal(30,9))) as DTwo,
	Unwrap(CAST(CASE
		WHEN Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(r.S AS Decimal(23,2))) * Decimal('10', 23, 2) AS Decimal(23,0))) AS Decimal(23,2))) - Unwrap(CAST(r.S AS Decimal(23,2))) * Decimal('10', 23, 2) = Decimal('-0.5', 23, 2) AND Unwrap(CAST(r.S AS Decimal(23,2))) * Decimal('10', 23, 2) > Decimal('0', 23, 2)
			THEN Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(r.S AS Decimal(23,2))) * Decimal('10', 23, 2) AS Decimal(23,0))) + Decimal('1', 23, 0) AS Decimal(23,2)))
		WHEN Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(r.S AS Decimal(23,2))) * Decimal('10', 23, 2) AS Decimal(23,0))) AS Decimal(23,2))) - Unwrap(CAST(r.S AS Decimal(23,2))) * Decimal('10', 23, 2) = Decimal('0.5', 23, 2) AND Unwrap(CAST(r.S AS Decimal(23,2))) * Decimal('10', 23, 2) < Decimal('0', 23, 2)
			THEN Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(r.S AS Decimal(23,2))) * Decimal('10', 23, 2) AS Decimal(23,0))) - Decimal('1', 23, 0) AS Decimal(23,2)))
		ELSE Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(r.S AS Decimal(23,2))) * Decimal('10', 23, 2) AS Decimal(23,0))) AS Decimal(23,2)))
	END / Decimal('10', 23, 2) AS Decimal(22,2))) as SOne,
	Unwrap(CAST(CASE
		WHEN Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(r.B AS Decimal(35,22))) AS Decimal(35,0))) AS Decimal(35,22))) - Unwrap(CAST(r.B AS Decimal(35,22))) = Decimal('-0.5', 35, 22) AND Unwrap(CAST(r.B AS Decimal(35,22))) > Decimal('0', 35, 22)
			THEN Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(r.B AS Decimal(35,22))) AS Decimal(35,0))) + Decimal('1', 35, 0) AS Decimal(35,22)))
		WHEN Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(r.B AS Decimal(35,22))) AS Decimal(35,0))) AS Decimal(35,22))) - Unwrap(CAST(r.B AS Decimal(35,22))) = Decimal('0.5', 35, 22) AND Unwrap(CAST(r.B AS Decimal(35,22))) < Decimal('0', 35, 22)
			THEN Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(r.B AS Decimal(35,22))) AS Decimal(35,0))) - Decimal('1', 35, 0) AS Decimal(35,22)))
		ELSE Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(r.B AS Decimal(35,22))) AS Decimal(35,0))) AS Decimal(35,22)))
	END AS Decimal(22,9))) as B
FROM
	RoundDeclaredShapeFull r
ORDER BY
	r.Id

