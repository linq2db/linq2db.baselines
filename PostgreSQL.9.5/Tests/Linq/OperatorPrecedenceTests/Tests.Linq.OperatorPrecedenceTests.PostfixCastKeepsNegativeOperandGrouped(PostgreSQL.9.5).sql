-- PostgreSQL.9.5 PostgreSQL
SELECT
	(-5.5)::text,
	(-5)::text,
	(-r."C")::text,
	(r."A" + r."B")::text,
	(r."A" * r."B")::text
FROM
	"PrecedenceRow" r
ORDER BY
	r."Id"

