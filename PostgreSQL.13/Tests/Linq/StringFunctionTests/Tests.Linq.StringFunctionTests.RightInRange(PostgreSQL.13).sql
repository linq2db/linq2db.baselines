-- PostgreSQL.13 PostgreSQL12
SELECT
	r."Id",
	Substring(r."S", Length(r."S") - r."N" + 1, r."N")
FROM
	"RightValues" r
ORDER BY
	r."Id"

-- PostgreSQL.13 PostgreSQL12
SELECT
	t1."Id",
	t1."S",
	t1."N"
FROM
	"RightValues" t1

-- PostgreSQL.13 PostgreSQL12
SELECT
	r."Id",
	r."S",
	r."N"
FROM
	"RightValues" r
WHERE
	Substring(r."S", Length(r."S") - r."N" + 1, r."N") = 'ohn'

-- PostgreSQL.13 PostgreSQL12
SELECT
	t1."Id",
	t1."S",
	t1."N"
FROM
	"RightValues" t1

