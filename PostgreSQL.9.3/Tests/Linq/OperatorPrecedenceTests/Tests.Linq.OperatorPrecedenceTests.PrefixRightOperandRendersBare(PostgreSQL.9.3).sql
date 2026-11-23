-- PostgreSQL.9.3 PostgreSQL
SELECT
	r."A" * -r."B",
	r."A" * -r."B" * r."C",
	r."A" & ~r."B"
FROM
	"PrecedenceRow" r
ORDER BY
	r."Id"

