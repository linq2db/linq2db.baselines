-- YDB Ydb
SELECT
	r.Id as Id,
	CASE
		WHEN r.F * Math::Pow(Double('10'), CAST(r.P AS Double)) >= Double('0')
			THEN Math::Round(r.F * Math::Pow(Double('10'), CAST(r.P AS Double)))
		ELSE -Math::Round(-(r.F * Math::Pow(Double('10'), CAST(r.P AS Double))))
	END / Math::Pow(Double('10'), CAST(r.P AS Double)) as c1,
	r.F as F,
	Math::NearbyInt(r.F * Math::Pow(Double('10'), CAST(r.P AS Double)), Math::RoundToNearest()) / Math::Pow(Double('10'), CAST(r.P AS Double)) as c2
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

