-- YDB Ydb
SELECT
	CASE
		WHEN r.D >= Double('0') THEN Math::Round(r.D)
		ELSE -Math::Round(-r.D)
	END as None_1,
	CASE
		WHEN r.D * Double('10') >= Double('0') THEN Math::Round(r.D * Double('10'))
		ELSE -Math::Round(-(r.D * Double('10')))
	END / Double('10') as One,
	CASE
		WHEN r.D * Math::Pow(Double('10'), Unwrap(CAST(r.P AS Double))) >= Double('0')
			THEN Math::Round(r.D * Math::Pow(Double('10'), Unwrap(CAST(r.P AS Double))))
		ELSE -Math::Round(-(r.D * Math::Pow(Double('10'), Unwrap(CAST(r.P AS Double)))))
	END / Math::Pow(Double('10'), Unwrap(CAST(r.P AS Double))) as Runtime
FROM
	RoundDoubleStored r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	t1.Id as Id,
	t1.D as D,
	t1.P as P
FROM
	RoundDoubleStored t1

