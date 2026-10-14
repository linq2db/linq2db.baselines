-- YDB Ydb
SELECT
	r.Id as Id,
	r.D34s2 as D34s2,
	r.D35s2 as D35s2,
	CASE
		WHEN Unwrap(CAST(Unwrap(CAST(r.D35s6 * Decimal('100', 35, 6) AS Decimal(35,0))) AS Decimal(35,6))) - r.D35s6 * Decimal('100', 35, 6) = Decimal('-0.5', 35, 6) AND r.D35s6 * Decimal('100', 35, 6) > Decimal('0', 35, 6)
			THEN Unwrap(CAST(Unwrap(CAST(r.D35s6 * Decimal('100', 35, 6) AS Decimal(35,0))) + Decimal('1', 35, 0) AS Decimal(35,6)))
		WHEN Unwrap(CAST(Unwrap(CAST(r.D35s6 * Decimal('100', 35, 6) AS Decimal(35,0))) AS Decimal(35,6))) - r.D35s6 * Decimal('100', 35, 6) = Decimal('0.5', 35, 6) AND r.D35s6 * Decimal('100', 35, 6) < Decimal('0', 35, 6)
			THEN Unwrap(CAST(Unwrap(CAST(r.D35s6 * Decimal('100', 35, 6) AS Decimal(35,0))) - Decimal('1', 35, 0) AS Decimal(35,6)))
		ELSE Unwrap(CAST(Unwrap(CAST(r.D35s6 * Decimal('100', 35, 6) AS Decimal(35,0))) AS Decimal(35,6)))
	END / Decimal('100', 35, 6) as R6,
	Unwrap(CAST(CASE
		WHEN Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(r.D4s4 AS Decimal(7,4))) * Decimal('100', 7, 4) AS Decimal(7,0))) AS Decimal(7,4))) - Unwrap(CAST(r.D4s4 AS Decimal(7,4))) * Decimal('100', 7, 4) = Decimal('-0.5', 7, 4) AND Unwrap(CAST(r.D4s4 AS Decimal(7,4))) * Decimal('100', 7, 4) > Decimal('0', 7, 4)
			THEN Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(r.D4s4 AS Decimal(7,4))) * Decimal('100', 7, 4) AS Decimal(7,0))) + Decimal('1', 7, 0) AS Decimal(7,4)))
		WHEN Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(r.D4s4 AS Decimal(7,4))) * Decimal('100', 7, 4) AS Decimal(7,0))) AS Decimal(7,4))) - Unwrap(CAST(r.D4s4 AS Decimal(7,4))) * Decimal('100', 7, 4) = Decimal('0.5', 7, 4) AND Unwrap(CAST(r.D4s4 AS Decimal(7,4))) * Decimal('100', 7, 4) < Decimal('0', 7, 4)
			THEN Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(r.D4s4 AS Decimal(7,4))) * Decimal('100', 7, 4) AS Decimal(7,0))) - Decimal('1', 7, 0) AS Decimal(7,4)))
		ELSE Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(r.D4s4 AS Decimal(7,4))) * Decimal('100', 7, 4) AS Decimal(7,0))) AS Decimal(7,4)))
	END / Decimal('100', 7, 4) AS Decimal(4,4))) as R4
FROM
	RoundNearLimit r
ORDER BY
	r.Id

