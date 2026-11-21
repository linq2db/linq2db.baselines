-- Oracle.11.Managed Oracle11
SELECT
	CAST(r.A + r.B AS VarChar(255)),
	CAST(r.A - r.B AS VarChar(255)),
	CAST(r.A * r.B AS VarChar(255)),
	CAST(Trunc(r.A / r.B) AS VarChar(255)),
	CAST(MOD(r.A, r.B) AS VarChar(255)),
	CAST(BITAND(r.A, r.B) AS VarChar(255)),
	CAST(r.A + r.B - BITAND(r.A, r.B) AS VarChar(255)),
	CAST(r.A + r.B - BITAND(r.A, r.B) * 2 AS VarChar(255)),
	CAST(-r.A AS VarChar(255)),
	CAST(-1 - r.A AS VarChar(255))
FROM
	"PrecedenceRow" r
ORDER BY
	r."Id"

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
