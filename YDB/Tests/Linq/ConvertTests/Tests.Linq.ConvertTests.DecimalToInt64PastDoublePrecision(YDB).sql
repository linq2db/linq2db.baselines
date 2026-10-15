-- YDB Ydb
SELECT
	r.Id as Id,
	Unwrap(CAST(CASE
		WHEN r.D > Decimal('0', 35, 2) AND Unwrap(CAST(Unwrap(CAST(r.D AS Decimal(35,0))) AS Decimal(35,2))) > r.D
			THEN Unwrap(CAST(r.D AS Decimal(35,0))) - Decimal('1', 35, 0)
		WHEN r.D < Decimal('0', 35, 2) AND Unwrap(CAST(Unwrap(CAST(r.D AS Decimal(35,0))) AS Decimal(35,2))) < r.D
			THEN Unwrap(CAST(r.D AS Decimal(35,0))) + Decimal('1', 35, 0)
		ELSE Unwrap(CAST(r.D AS Decimal(35,0)))
	END AS Int64)) as D,
	Unwrap(CAST(CASE
		WHEN Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(r.D AS Decimal(35,2))) AS Decimal(35,0))) AS Decimal(35,2))) > Decimal('0', 35, 2) AND Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(r.D AS Decimal(35,2))) AS Decimal(35,0))) AS Decimal(35,2))) AS Decimal(35,0))) AS Decimal(35,2))) > Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(r.D AS Decimal(35,2))) AS Decimal(35,0))) AS Decimal(35,2)))
			THEN Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(r.D AS Decimal(35,2))) AS Decimal(35,0))) AS Decimal(35,2))) AS Decimal(35,0))) - Decimal('1', 35, 0)
		WHEN Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(r.D AS Decimal(35,2))) AS Decimal(35,0))) AS Decimal(35,2))) < Decimal('0', 35, 2) AND Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(r.D AS Decimal(35,2))) AS Decimal(35,0))) AS Decimal(35,2))) AS Decimal(35,0))) AS Decimal(35,2))) < Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(r.D AS Decimal(35,2))) AS Decimal(35,0))) AS Decimal(35,2)))
			THEN Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(r.D AS Decimal(35,2))) AS Decimal(35,0))) AS Decimal(35,2))) AS Decimal(35,0))) + Decimal('1', 35, 0)
		ELSE Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(r.D AS Decimal(35,2))) AS Decimal(35,0))) AS Decimal(35,2))) AS Decimal(35,0)))
	END AS Int64)) as DRounded,
	Unwrap(CAST(CASE
		WHEN r.S > Decimal('0', 35, 2) AND Unwrap(CAST(Unwrap(CAST(r.S AS Decimal(35,0))) AS Decimal(35,2))) > r.S
			THEN Unwrap(CAST(r.S AS Decimal(35,0))) - Decimal('1', 35, 0)
		WHEN r.S < Decimal('0', 35, 2) AND Unwrap(CAST(Unwrap(CAST(r.S AS Decimal(35,0))) AS Decimal(35,2))) < r.S
			THEN Unwrap(CAST(r.S AS Decimal(35,0))) + Decimal('1', 35, 0)
		ELSE Unwrap(CAST(r.S AS Decimal(35,0)))
	END AS Int64)) as S,
	Unwrap(CAST(CASE
		WHEN Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(r.S AS Decimal(35, 2))) AS Decimal(35,0))) AS Decimal(35, 2))) > Decimal('0', 35, 2) AND Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(r.S AS Decimal(35, 2))) AS Decimal(35,0))) AS Decimal(35, 2))) AS Decimal(35,0))) AS Decimal(35,2))) > Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(r.S AS Decimal(35, 2))) AS Decimal(35,0))) AS Decimal(35, 2)))
			THEN Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(r.S AS Decimal(35, 2))) AS Decimal(35,0))) AS Decimal(35, 2))) AS Decimal(35,0))) - Decimal('1', 35, 0)
		WHEN Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(r.S AS Decimal(35, 2))) AS Decimal(35,0))) AS Decimal(35, 2))) < Decimal('0', 35, 2) AND Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(r.S AS Decimal(35, 2))) AS Decimal(35,0))) AS Decimal(35, 2))) AS Decimal(35,0))) AS Decimal(35,2))) < Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(r.S AS Decimal(35, 2))) AS Decimal(35,0))) AS Decimal(35, 2)))
			THEN Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(r.S AS Decimal(35, 2))) AS Decimal(35,0))) AS Decimal(35, 2))) AS Decimal(35,0))) + Decimal('1', 35, 0)
		ELSE Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(r.S AS Decimal(35, 2))) AS Decimal(35,0))) AS Decimal(35, 2))) AS Decimal(35,0)))
	END AS Int64)) as SRounded,
	CAST(CASE
		WHEN r.N > Decimal('0', 35, 2) AND CAST(CAST(r.N AS Decimal(35,0)) AS Decimal(35,2)) > r.N
			THEN CAST(r.N AS Decimal(35,0)) - Decimal('1', 35, 0)
		WHEN r.N < Decimal('0', 35, 2) AND CAST(CAST(r.N AS Decimal(35,0)) AS Decimal(35,2)) < r.N
			THEN CAST(r.N AS Decimal(35,0)) + Decimal('1', 35, 0)
		ELSE CAST(r.N AS Decimal(35,0))
	END AS Int64) as N,
	Unwrap(CAST(CASE
		WHEN r.E * r.E > Decimal('0', 35, 9) AND Unwrap(CAST(Unwrap(CAST(r.E * r.E AS Decimal(35,0))) AS Decimal(35,9))) > r.E * r.E
			THEN Unwrap(CAST(r.E * r.E AS Decimal(35,0))) - Decimal('1', 35, 0)
		WHEN r.E * r.E < Decimal('0', 35, 9) AND Unwrap(CAST(Unwrap(CAST(r.E * r.E AS Decimal(35,0))) AS Decimal(35,9))) < r.E * r.E
			THEN Unwrap(CAST(r.E * r.E AS Decimal(35,0))) + Decimal('1', 35, 0)
		ELSE Unwrap(CAST(r.E * r.E AS Decimal(35,0)))
	END AS Int64)) as Product,
	Unwrap(CAST(Unwrap(CAST(r.F AS Double)) AS Int64)) as F,
	Unwrap(CAST(CASE
		WHEN r.H + r.H > Decimal('0', 35, 9) AND Unwrap(CAST(Unwrap(CAST(r.H + r.H AS Decimal(35,0))) AS Decimal(35,9))) > r.H + r.H
			THEN Unwrap(CAST(r.H + r.H AS Decimal(35,0))) - Decimal('1', 35, 0)
		WHEN r.H + r.H < Decimal('0', 35, 9) AND Unwrap(CAST(Unwrap(CAST(r.H + r.H AS Decimal(35,0))) AS Decimal(35,9))) < r.H + r.H
			THEN Unwrap(CAST(r.H + r.H AS Decimal(35,0))) + Decimal('1', 35, 0)
		ELSE Unwrap(CAST(r.H + r.H AS Decimal(35,0)))
	END AS Int64)) as Sum_1
FROM
	WideDecimal r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	t1.Id as Id,
	t1.D as D,
	t1.S as S,
	t1.N as N,
	t1.E as E,
	t1.F as F,
	t1.H as H
FROM
	WideDecimal t1

