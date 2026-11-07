-- PostgreSQL.9.5 PostgreSQL
SELECT
	r."Id",
	Substring(r."S", Length(r."S") - r."N" + 1, r."N")
FROM
	"RightValues" r
ORDER BY
	r."Id"

-- PostgreSQL.9.5 PostgreSQL
SELECT
	t1."Id",
	t1."S",
	t1."N"
FROM
	"RightValues" t1

-- PostgreSQL.9.5 PostgreSQL
SELECT
	r."Id",
	r."S",
	r."N"
FROM
	"RightValues" r
WHERE
	Substring(r."S", Length(r."S") - r."N" + 1, r."N") = 'ohn'

-- PostgreSQL.9.5 PostgreSQL
SELECT
	t1."Id",
	t1."S",
	t1."N"
FROM
	"RightValues" t1

