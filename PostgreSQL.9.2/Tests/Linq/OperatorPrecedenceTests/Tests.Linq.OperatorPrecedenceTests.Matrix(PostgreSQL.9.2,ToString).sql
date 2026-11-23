-- PostgreSQL.9.2 PostgreSQL
SELECT
	(r."A" + r."B")::text,
	(r."A" - r."B")::text,
	(r."A" * r."B")::text,
	(r."A" / r."B")::text,
	Floor(r."A"::decimal % r."B")::Int::text,
	(r."A" & r."B")::text,
	(r."A" | r."B")::text,
	(r."A" # r."B")::text,
	(-r."A")::text,
	(~r."A")::text
FROM
	"PrecedenceRow" r
ORDER BY
	r."Id"

