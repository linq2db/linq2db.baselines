-- YDB Ydb
SELECT
	Math::Pow(Unwrap(CAST(r.B + r.C AS Double)), Double('2')) as c1,
	Math::Pow(Unwrap(CAST(r.C AS Double)), Unwrap(CAST(r.B + r.C AS Double))) as c2,
	Math::Pow(Unwrap(CAST(r.B AS Double)), Double('2')) + r.C as c3,
	Math::Pow(Unwrap(CAST(r.B - r.C AS Double)), Double('2')) as c4,
	Math::Pow(Unwrap(CAST(r.C AS Double)), Unwrap(CAST(r.B - r.C AS Double))) as c5,
	Math::Pow(Unwrap(CAST(r.B AS Double)), Double('2')) - r.C as c6,
	Math::Pow(Unwrap(CAST(r.B * r.C AS Double)), Double('2')) as c7,
	Math::Pow(Unwrap(CAST(r.C AS Double)), Unwrap(CAST(r.B * r.C AS Double))) as c8,
	Math::Pow(Unwrap(CAST(r.B AS Double)), Double('2')) * r.C as c9,
	Math::Pow(Unwrap(CAST(r.B / r.C AS Double)), Double('2')) as c10,
	Math::Pow(Unwrap(CAST(r.C AS Double)), Unwrap(CAST(r.B / r.C AS Double))) as c11,
	Math::Pow(Unwrap(CAST(r.B AS Double)), Double('2')) / r.C as c12,
	Math::Pow(Unwrap(CAST(-r.B AS Double)), Double('2')) as c13,
	-Math::Pow(Unwrap(CAST(r.B AS Double)), Double('2')) as c14,
	Math::Pow(Unwrap(CAST(r.C AS Double)), Math::Pow(Unwrap(CAST(r.C AS Double)), Unwrap(CAST(r.C AS Double)))) as c15,
	Math::Pow(Unwrap(CAST(r.B + r.C AS Double)), Double('2')) as c16
FROM
	PrecedenceRow r
ORDER BY
	r.Id

