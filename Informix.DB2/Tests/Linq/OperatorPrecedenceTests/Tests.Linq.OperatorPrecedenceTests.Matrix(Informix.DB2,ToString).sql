-- Informix.DB2 Informix
SELECT
	To_Char(r.A + r.B),
	To_Char(r.A - r.B),
	To_Char(r.A * r.B),
	To_Char(r.A / r.B),
	To_Char(Mod(r.A, r.B)),
	To_Char(BitAnd(r.A, r.B)),
	To_Char(BitOr(r.A, r.B)),
	To_Char(BitXor(r.A, r.B)),
	To_Char(-r.A),
	To_Char(BITNOT(r.A))
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- cell ToString/ToString(Add(a,b)): green
-- cell ToString/ToString(Sub(a,b)): green
-- cell ToString/ToString(Mul(a,b)): green
-- cell ToString/ToString(Div(a,b)): red
-- cell ToString/ToString(Mod(a,b)): green
-- cell ToString/ToString(And(a,b)): green
-- cell ToString/ToString(Or(a,b)): green
-- cell ToString/ToString(Xor(a,b)): green
-- cell ToString/ToString(Neg(a)): green
-- cell ToString/ToString(Not(a)): green
