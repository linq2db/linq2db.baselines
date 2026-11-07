-- YDB Ydb
SELECT
	r.Id as Id,
	CASE
		WHEN r.F >= Double('0') THEN Math::Round(r.F)
		ELSE -Math::Round(-r.F)
	END as Round,
	CASE
		WHEN r.F * Math::Pow(Double('10'), CAST(r.P AS Double)) >= Double('0')
			THEN Math::Round(r.F * Math::Pow(Double('10'), CAST(r.P AS Double)))
		ELSE -Math::Round(-(r.F * Math::Pow(Double('10'), CAST(r.P AS Double))))
	END / Math::Pow(Double('10'), CAST(r.P AS Double)) as RoundPrecision,
	Math::NearbyInt(r.F, Math::RoundToNearest()) as ToEven,
	Math::NearbyInt(r.F * Math::Pow(Double('10'), CAST(r.P AS Double)), Math::RoundToNearest()) / Math::Pow(Double('10'), CAST(r.P AS Double)) as ToEvenPrecision
FROM
	RoundValues r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	t1.Id as Id,
	t1.D as D,
	t1.F as F,
	t1.P as P
FROM
	RoundValues t1

