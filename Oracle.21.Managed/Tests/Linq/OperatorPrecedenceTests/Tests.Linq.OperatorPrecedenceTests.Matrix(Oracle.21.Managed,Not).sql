-- Oracle.21.Managed Oracle.Managed Oracle12
SELECT
	-1 - (r.A + r.B),
	-1 - (r.A + r.B),
	-1 - (r.A - r.B),
	-1 - (r.A - r.B),
	-1 - r.A * r.B,
	-1 - r.A * r.B,
	-1 - Trunc(r.A / r.B),
	-1 - Trunc(r.A / r.B),
	-1 - BITAND(r.A, r.B),
	-1 - BITAND(r.A, r.B),
	-1 - (r.A + r.B - BITAND(r.A, r.B)),
	-1 - (r.A + r.B - BITAND(r.A, r.B)),
	-1 + r.B,
	-1 - (-1 - r.B),
	4,
	-1 - -5 * r.B
FROM
	"PrecedenceRow" r
ORDER BY
	r."Id"

-- Oracle.21.Managed Oracle.Managed Oracle12
SELECT
	4
FROM
	"PrecedenceRow" r
ORDER BY
	r."Id"

