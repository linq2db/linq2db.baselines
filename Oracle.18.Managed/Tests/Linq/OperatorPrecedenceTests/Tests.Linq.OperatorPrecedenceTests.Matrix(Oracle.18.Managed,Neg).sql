-- Oracle.18.Managed Oracle.Managed Oracle12
SELECT
	-(r.A + r.B),
	-(r.A + r.B),
	-(r.A - r.B),
	-(r.A - r.B),
	-BITAND(r.A, r.B),
	-BITAND(r.A, r.B),
	-(r.A + r.B - BITAND(r.A, r.B)),
	-(r.A + r.B - BITAND(r.A, r.B)),
	-(r.A + r.B - BITAND(r.A, r.B) * 2),
	-(r.A + r.B - BITAND(r.A, r.B) * 2),
	r.B,
	-(-1 - r.B),
	-(-5),
	-(-5 * r.B)
FROM
	"PrecedenceRow" r
ORDER BY
	r."Id"

-- Oracle.18.Managed Oracle.Managed Oracle12
SELECT
	-(-5)
FROM
	"PrecedenceRow" r
ORDER BY
	r."Id"

