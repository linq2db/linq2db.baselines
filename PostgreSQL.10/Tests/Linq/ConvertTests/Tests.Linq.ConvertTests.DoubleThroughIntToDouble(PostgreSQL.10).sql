-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
SELECT
	r."Id",
	Floor(r."F")::Int::Float
FROM
	"DoubleValue" r
ORDER BY
	r."Id"

-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
SELECT
	t1."Id",
	t1."F"
FROM
	"DoubleValue" t1

