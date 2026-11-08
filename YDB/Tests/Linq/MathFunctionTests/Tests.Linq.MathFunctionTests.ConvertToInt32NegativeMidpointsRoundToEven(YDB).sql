-- YDB Ydb
SELECT
	r.Id as Id,
	Unwrap(CAST(CASE
		WHEN Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(r.D AS Decimal(35,22))) AS Decimal(35,0))) AS Decimal(35,22))) AS Decimal(22,9))) > Decimal('0', 35, 1) AND Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(r.D AS Decimal(35,22))) AS Decimal(35,0))) AS Decimal(35,22))) AS Decimal(22,9))) AS Decimal(35,1))) AS Decimal(35,0))) AS Decimal(35,1))) > Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(r.D AS Decimal(35,22))) AS Decimal(35,0))) AS Decimal(35,22))) AS Decimal(22,9)))
			THEN Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(r.D AS Decimal(35,22))) AS Decimal(35,0))) AS Decimal(35,22))) AS Decimal(22,9))) AS Decimal(35,1))) AS Decimal(35,0))) - Decimal('1', 35, 0)
		WHEN Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(r.D AS Decimal(35,22))) AS Decimal(35,0))) AS Decimal(35,22))) AS Decimal(22,9))) < Decimal('0', 35, 1) AND Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(r.D AS Decimal(35,22))) AS Decimal(35,0))) AS Decimal(35,22))) AS Decimal(22,9))) AS Decimal(35,1))) AS Decimal(35,0))) AS Decimal(35,1))) < Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(r.D AS Decimal(35,22))) AS Decimal(35,0))) AS Decimal(35,22))) AS Decimal(22,9)))
			THEN Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(r.D AS Decimal(35,22))) AS Decimal(35,0))) AS Decimal(35,22))) AS Decimal(22,9))) AS Decimal(35,1))) AS Decimal(35,0))) + Decimal('1', 35, 0)
		ELSE Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(r.D AS Decimal(35,22))) AS Decimal(35,0))) AS Decimal(35,22))) AS Decimal(22,9))) AS Decimal(35,1))) AS Decimal(35,0)))
	END AS Int32)) as FromDecimal,
	Unwrap(CAST(Math::NearbyInt(r.F, Math::RoundToNearest()) AS Int32)) as FromDouble
FROM
	MidpointValues r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	t1.Id as Id,
	t1.D as D,
	t1.F as F
FROM
	MidpointValues t1

