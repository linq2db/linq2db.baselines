-- Oracle.18.Managed Oracle.Managed Oracle12
SELECT
	r."Id",
	CAST(CAST(Floor(r.F) AS Int) AS Float)
FROM
	"DoubleValue" r
ORDER BY
	r."Id"

-- Oracle.18.Managed Oracle.Managed Oracle12
SELECT
	t1."Id",
	t1.F
FROM
	"DoubleValue" t1

