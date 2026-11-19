-- YDB Ydb
SELECT
	Unwrap(CAST(r.A + r.B AS Text)) as c1,
	Unwrap(CAST(r.A - r.B AS Text)) as c2,
	Unwrap(CAST(r.A * r.B AS Text)) as c3,
	Unwrap(CAST(r.A / r.B AS Text)) as c4,
	Unwrap(CAST(r.A % r.B AS Text)) as c5,
	Unwrap(CAST(Unwrap(CAST(r.A AS Uint32)) & Unwrap(CAST(r.B AS Uint32)) AS Text)) as c6,
	Unwrap(CAST(Unwrap(CAST(r.A AS Uint32)) | Unwrap(CAST(r.B AS Uint32)) AS Text)) as c7,
	Unwrap(CAST(Unwrap(CAST(r.A AS Uint32)) ^ Unwrap(CAST(r.B AS Uint32)) AS Text)) as c8,
	Unwrap(CAST(-r.A AS Text)) as c9,
	Unwrap(CAST(~Unwrap(CAST(r.A AS Uint32)) AS Text)) as c10
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- cell ToString/ToString(Add(a,b)): green
-- cell ToString/ToString(Sub(a,b)): green
-- cell ToString/ToString(Mul(a,b)): green
-- cell ToString/ToString(Div(a,b)): green
-- cell ToString/ToString(Mod(a,b)): green
-- cell ToString/ToString(And(a,b)): green
-- cell ToString/ToString(Or(a,b)): green
-- cell ToString/ToString(Xor(a,b)): green
-- cell ToString/ToString(Neg(a)): green
-- cell ToString/ToString(Not(a)): red
