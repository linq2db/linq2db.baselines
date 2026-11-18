-- YDB Ydb
SELECT
	r.Id as Id,
	Unwrap(CAST(CASE
		WHEN r.A > Decimal('0', 35, 1) AND Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(r.A AS Decimal(35,1))) AS Decimal(35,0))) AS Decimal(35,1))) > r.A
			THEN Unwrap(CAST(Unwrap(CAST(r.A AS Decimal(35,1))) AS Decimal(35,0))) - Decimal('1', 35, 0)
		WHEN r.A < Decimal('0', 35, 1) AND Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(r.A AS Decimal(35,1))) AS Decimal(35,0))) AS Decimal(35,1))) < r.A
			THEN Unwrap(CAST(Unwrap(CAST(r.A AS Decimal(35,1))) AS Decimal(35,0))) + Decimal('1', 35, 0)
		ELSE Unwrap(CAST(Unwrap(CAST(r.A AS Decimal(35,1))) AS Decimal(35,0)))
	END AS Int64)) as A,
	Unwrap(CAST(CASE
		WHEN Unwrap(CAST(Unwrap(CAST(Math::NearbyInt(Unwrap(CAST(r.A AS Double)), Math::RoundToNearest()) AS Text)) AS Decimal(22,9))) > Decimal('0', 35, 1) AND Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(Math::NearbyInt(Unwrap(CAST(r.A AS Double)), Math::RoundToNearest()) AS Text)) AS Decimal(22,9))) AS Decimal(35,1))) AS Decimal(35,0))) AS Decimal(35,1))) > Unwrap(CAST(Unwrap(CAST(Math::NearbyInt(Unwrap(CAST(r.A AS Double)), Math::RoundToNearest()) AS Text)) AS Decimal(22,9)))
			THEN Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(Math::NearbyInt(Unwrap(CAST(r.A AS Double)), Math::RoundToNearest()) AS Text)) AS Decimal(22,9))) AS Decimal(35,1))) AS Decimal(35,0))) - Decimal('1', 35, 0)
		WHEN Unwrap(CAST(Unwrap(CAST(Math::NearbyInt(Unwrap(CAST(r.A AS Double)), Math::RoundToNearest()) AS Text)) AS Decimal(22,9))) < Decimal('0', 35, 1) AND Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(Math::NearbyInt(Unwrap(CAST(r.A AS Double)), Math::RoundToNearest()) AS Text)) AS Decimal(22,9))) AS Decimal(35,1))) AS Decimal(35,0))) AS Decimal(35,1))) < Unwrap(CAST(Unwrap(CAST(Math::NearbyInt(Unwrap(CAST(r.A AS Double)), Math::RoundToNearest()) AS Text)) AS Decimal(22,9)))
			THEN Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(Math::NearbyInt(Unwrap(CAST(r.A AS Double)), Math::RoundToNearest()) AS Text)) AS Decimal(22,9))) AS Decimal(35,1))) AS Decimal(35,0))) + Decimal('1', 35, 0)
		ELSE Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(Math::NearbyInt(Unwrap(CAST(r.A AS Double)), Math::RoundToNearest()) AS Text)) AS Decimal(22,9))) AS Decimal(35,1))) AS Decimal(35,0)))
	END AS Int64)) as ARounded,
	Unwrap(CAST(CASE
		WHEN r.L > Decimal('0', 35, 1) AND Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(r.L AS Decimal(35,1))) AS Decimal(35,0))) AS Decimal(35,1))) > r.L
			THEN Unwrap(CAST(Unwrap(CAST(r.L AS Decimal(35,1))) AS Decimal(35,0))) - Decimal('1', 35, 0)
		WHEN r.L < Decimal('0', 35, 1) AND Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(r.L AS Decimal(35,1))) AS Decimal(35,0))) AS Decimal(35,1))) < r.L
			THEN Unwrap(CAST(Unwrap(CAST(r.L AS Decimal(35,1))) AS Decimal(35,0))) + Decimal('1', 35, 0)
		ELSE Unwrap(CAST(Unwrap(CAST(r.L AS Decimal(35,1))) AS Decimal(35,0)))
	END AS Int32)) as L
FROM
	DecimalStoredDouble r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	t1.Id as Id,
	t1.A as A,
	t1.L as L
FROM
	DecimalStoredDouble t1

