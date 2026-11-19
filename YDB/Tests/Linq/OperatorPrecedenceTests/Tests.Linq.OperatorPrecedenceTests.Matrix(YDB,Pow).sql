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

-- cell Pow/Pow(Add(b,c),2): green
-- cell Pow/Pow(c,Add(b,c)): green
-- cell Pow/Add(Pow(b,2),c): green
-- cell Pow/Pow(Sub(b,c),2): green
-- cell Pow/Pow(c,Sub(b,c)): green
-- cell Pow/Sub(Pow(b,2),c): green
-- cell Pow/Pow(Mul(b,c),2): green
-- cell Pow/Pow(c,Mul(b,c)): green
-- cell Pow/Mul(Pow(b,2),c): green
-- cell Pow/Pow(Div(b,c),2): green
-- cell Pow/Pow(c,Div(b,c)): green
-- cell Pow/Div(Pow(b,2),c): green
-- cell Pow/Pow(Neg(b),2): green
-- cell Pow/Neg(Pow(b,2)): green
-- cell Pow/Pow(c,Pow(c,c)): green
-- cell Pow/Pow(AsNotNull(Add(b,c)),2): green
