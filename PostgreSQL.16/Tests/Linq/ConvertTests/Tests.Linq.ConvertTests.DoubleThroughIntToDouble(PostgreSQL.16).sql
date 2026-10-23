-- PostgreSQL.16 PostgreSQL.15 PostgreSQL12
SELECT
	r."Id",
	Floor(r."F")::Int::Float
FROM
	"DoubleValue" r
ORDER BY
	r."Id"

-- PostgreSQL.16 PostgreSQL.15 PostgreSQL12
SELECT
	t1."Id",
	t1."F"
FROM
	"DoubleValue" t1

