-- PostgreSQL.17 PostgreSQL.15 PostgreSQL12
SELECT
	(r."A"::Float::decimal % (r."B" + r."C"))::Float
FROM
	"PrecedenceRow" r
ORDER BY
	r."Id"

