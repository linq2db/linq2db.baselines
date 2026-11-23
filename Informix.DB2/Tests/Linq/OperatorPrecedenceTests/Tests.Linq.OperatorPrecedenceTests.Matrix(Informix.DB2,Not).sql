-- Informix.DB2 Informix
SELECT
	BITNOT(r.A + r.B),
	BITNOT(r.A + r.B),
	BITNOT(r.A - r.B),
	BITNOT(r.A - r.B),
	BITNOT(r.A * r.B),
	BITNOT(r.A * r.B),
	BITNOT((r.A / r.B)::Int),
	BITNOT((r.A / r.B)::Int),
	BITNOT(BitAnd(r.A, r.B)),
	BITNOT(BitAnd(r.A, r.B)),
	BITNOT(BitOr(r.A, r.B)),
	BITNOT(BitOr(r.A, r.B)),
	BITNOT(-r.B),
	BITNOT(BITNOT(r.B)),
	BITNOT(-5),
	BITNOT(-5 * r.B)
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- Informix.DB2 Informix
SELECT
	BITNOT(-5)
FROM
	PrecedenceRow r
ORDER BY
	r.Id

