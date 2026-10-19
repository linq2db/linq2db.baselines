-- Oracle.11.Managed Oracle11
SELECT
	r."Id",
	CAST(CAST(Floor(r.F) AS Int) AS Float)
FROM
	"DoubleValue" r
ORDER BY
	r."Id"

-- Oracle.11.Managed Oracle11
SELECT
	t1."Id",
	t1.F
FROM
	"DoubleValue" t1

