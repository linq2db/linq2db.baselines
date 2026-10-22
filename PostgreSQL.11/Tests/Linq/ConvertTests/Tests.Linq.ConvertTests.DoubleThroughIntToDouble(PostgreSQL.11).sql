-- PostgreSQL.11 PostgreSQL
SELECT
	r."Id",
	Floor(r."F")::Int::Float
FROM
	"DoubleValue" r
ORDER BY
	r."Id"

-- PostgreSQL.11 PostgreSQL
SELECT
	t1."Id",
	t1."F"
FROM
	"DoubleValue" t1

