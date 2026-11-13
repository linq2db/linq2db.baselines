-- Oracle.21.Managed Oracle.Managed Oracle12
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

-- Oracle.21.Managed Oracle.Managed Oracle12
SELECT
	t1."Id",
	t1.S,
	t1.N
FROM
	"RightValues" t1

-- Oracle.21.Managed Oracle.Managed Oracle12
SELECT
	r."Id",
	r.S,
	r.N
FROM
	"RightValues" r
WHERE
	Substr(r.S, CASE
		WHEN Length(r.S) - r.N + 1 > 0 THEN Length(r.S) - r.N + 1
		ELSE 1
	END, r.N) = 'ohn'

-- Oracle.21.Managed Oracle.Managed Oracle12
SELECT
	t1."Id",
	t1.S,
	t1.N
FROM
	"RightValues" t1

