-- YDB Ydb
SELECT
	r.Id as Id,
	Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(r.D AS Decimal(35,22))) AS Decimal(35,0))) AS Decimal(35,22))) AS Decimal(22,9))) as DecimalDefault,
	Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(r.D AS Decimal(35,22))) AS Decimal(35,0))) AS Decimal(35,22))) AS Decimal(22,9))) as DecimalToEven,
	Unwrap(CAST(CASE
		WHEN Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(r.D AS Decimal(35,22))) AS Decimal(35,0))) AS Decimal(35,22))) - Unwrap(CAST(r.D AS Decimal(35,22))) = Decimal('-0.5', 35, 22) AND Unwrap(CAST(r.D AS Decimal(35,22))) > Decimal('0', 35, 22)
			THEN Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(r.D AS Decimal(35,22))) AS Decimal(35,0))) + Decimal('1', 35, 0) AS Decimal(35,22)))
		WHEN Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(r.D AS Decimal(35,22))) AS Decimal(35,0))) AS Decimal(35,22))) - Unwrap(CAST(r.D AS Decimal(35,22))) = Decimal('0.5', 35, 22) AND Unwrap(CAST(r.D AS Decimal(35,22))) < Decimal('0', 35, 22)
			THEN Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(r.D AS Decimal(35,22))) AS Decimal(35,0))) - Decimal('1', 35, 0) AS Decimal(35,22)))
		ELSE Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(r.D AS Decimal(35,22))) AS Decimal(35,0))) AS Decimal(35,22)))
	END AS Decimal(22,9))) as DecimalAway,
	Math::NearbyInt(r.F, Math::RoundToNearest()) as DoubleDefault,
	Math::NearbyInt(r.F, Math::RoundToNearest()) as DoubleToEven,
	CASE
		WHEN r.F >= Double('0') THEN Math::Round(r.F)
		ELSE -Math::Round(-r.F)
	END as DoubleAway
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

