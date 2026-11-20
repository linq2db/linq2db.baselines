-- DuckDB
SELECT
	CAST(r.A + r.B AS VARCHAR),
	CAST(r.A - r.B AS VARCHAR),
	CAST(r.A * r.B AS VARCHAR),
	CAST(r.A // r.B AS VARCHAR),
	CAST(r.A % r.B AS VARCHAR),
	CAST(r.A & r.B AS VARCHAR),
	CAST(r.A | r.B AS VARCHAR),
	CAST(xor(r.A, r.B) AS VARCHAR),
	CAST(-r.A AS VARCHAR),
	CAST(~r.A AS VARCHAR)
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
-- cell ToString/ToString(Not(a)): green
