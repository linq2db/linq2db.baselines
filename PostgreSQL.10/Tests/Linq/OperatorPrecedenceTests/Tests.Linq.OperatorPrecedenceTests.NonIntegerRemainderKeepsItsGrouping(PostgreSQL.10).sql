-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
SELECT
	(r."A"::Float::decimal % (r."B" + r."C"))::Float
FROM
	"PrecedenceRow" r
ORDER BY
	r."Id"

