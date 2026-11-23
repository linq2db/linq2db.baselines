-- Informix.DB2 Informix
SELECT
	-(r.A + r.B),
	-(r.A + r.B),
	-(r.A - r.B),
	-(r.A - r.B),
	-BitAnd(r.A, r.B),
	-BitAnd(r.A, r.B),
	-BitOr(r.A, r.B),
	-BitOr(r.A, r.B),
	-BitXor(r.A, r.B),
	-BitXor(r.A, r.B),
	r.B,
	-BITNOT(r.B),
	-(-5),
	-(-5 * r.B)
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- Informix.DB2 Informix
SELECT
	-(-5)
FROM
	PrecedenceRow r
ORDER BY
	r.Id

