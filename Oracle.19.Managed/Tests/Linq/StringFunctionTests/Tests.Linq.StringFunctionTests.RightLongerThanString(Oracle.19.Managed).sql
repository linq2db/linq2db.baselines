-- Oracle.19.Managed Oracle.Managed Oracle12
SELECT
	r."Id",
	Substr(r.S, CASE
		WHEN Length(r.S) - r.N + 1 > 0 THEN Length(r.S) - r.N + 1
		ELSE 1
	END, r.N)
FROM
	"RightValues" r
ORDER BY
	r."Id"

-- Oracle.19.Managed Oracle.Managed Oracle12
SELECT
	t1."Id",
	t1.S,
	t1.N
FROM
	"RightValues" t1

