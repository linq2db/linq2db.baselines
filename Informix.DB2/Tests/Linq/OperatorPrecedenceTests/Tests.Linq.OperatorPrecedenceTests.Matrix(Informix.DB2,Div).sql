-- Informix.DB2 Informix
SELECT
	((r.A + r.B) / r.C)::Int,
	(r.A / (r.B + r.C))::Int,
	((r.A + r.B) / r.C)::Int,
	(r.A / (r.B + r.C))::Int,
	((r.A - r.B) / r.C)::Int,
	(r.A / (r.B - r.C))::Int,
	((r.A - r.B) / r.C)::Int,
	(r.A / (r.B - r.C))::Int,
	(r.A / (r.B * r.C))::Int,
	(r.A / (r.B * r.C))::Int,
	((r.A / r.B)::Int / r.C)::Int,
	(r.A / (r.B / r.C)::Int)::Int,
	((r.A / r.B)::Int / r.C)::Int,
	(r.A / (r.B / r.C)::Int)::Int,
	(r.A / BitXor(r.B, r.C))::Int,
	(r.A / BitXor(r.B, r.C))::Int,
	((r.A + r.B) / r.C)::Int,
	(r.A / (r.B + r.C))::Int,
	((r.A + -6) / r.C)::Int,
	((r.A - r.B) / r.C)::Int,
	(r.A / (r.B - r.C))::Int,
	((r.A - -6) / r.C)::Int,
	((r.A * r.B) / r.C)::Int,
	(r.A / (r.B * r.C))::Int,
	((r.A * -6) / r.C)::Int,
	((r.A / r.B) / r.C)::Int,
	(r.A / (r.B / r.C))::Int,
	((r.A / -6) / r.C)::Int,
	((r.A + r.B) / r.C)::Int,
	(r.A / (r.B + r.C))::Int,
	((r.A + -6) / r.C)::Int,
	(r.A / -r.B)::Int,
	((r.A - r.B) / r.C)::Int,
	((r.A + r.B) / r.C)::Int,
	((r.A / -r.B)::Int / r.C)::Int,
	(BitAnd(r.A, -r.B) / r.C)::Int,
	(BitXor(r.A, -r.B) / r.C)::Int,
	(r.A * BITNOT(r.B) / r.C)::Int,
	(r.A * -5 / r.C)::Int,
	(BitAnd(r.A, -5) / r.C)::Int
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- Informix.DB2 Informix
SELECT
	(r.A * -5 / r.C)::Int,
	(BitAnd(r.A, -5) / r.C)::Int
FROM
	PrecedenceRow r
ORDER BY
	r.Id

