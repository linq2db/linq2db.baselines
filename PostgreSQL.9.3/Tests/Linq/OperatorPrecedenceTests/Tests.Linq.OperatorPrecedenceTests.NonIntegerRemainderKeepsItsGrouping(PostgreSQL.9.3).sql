-- PostgreSQL.9.3 PostgreSQL
SELECT
	(r."A"::Float::decimal % (r."B" + r."C"))::Float
FROM
	"PrecedenceRow" r
ORDER BY
	r."Id"

