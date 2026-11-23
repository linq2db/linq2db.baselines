-- Informix.DB2 Informix
SELECT
	To_Char(r.A + r.B),
	To_Char(r.A - r.B),
	To_Char(r.A * r.B),
	To_Char((r.A / r.B)::Int),
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

