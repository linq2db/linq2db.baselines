-- Oracle.18.Managed Oracle.Managed Oracle12
SELECT
	r."Id",
	Trunc(r.D, 0),
	Trunc(r.F, 0),
	Trunc(r.N, 0),
	Trunc(r.G, 0),
	Trunc(r.D, 0),
	Trunc(r.F, 0)
FROM
	"TruncateValues" r
ORDER BY
	r."Id"

-- Oracle.18.Managed Oracle.Managed Oracle12
SELECT
	t1."Id",
	t1.D,
	t1.F,
	t1.N,
	t1.G
FROM
	"TruncateValues" t1

