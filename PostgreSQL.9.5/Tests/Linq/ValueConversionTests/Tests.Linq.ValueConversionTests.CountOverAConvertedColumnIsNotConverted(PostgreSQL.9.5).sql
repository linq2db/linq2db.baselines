-- PostgreSQL.9.5 PostgreSQL
SELECT
	COUNT(r."Value") OVER (ORDER BY r."Id")
FROM
	"ScaledValueRow" r
ORDER BY
	r."Id"

-- PostgreSQL.9.5 PostgreSQL
SELECT
	MAX(t1."Value")
FROM
	"ScaledValueRow" t1

-- PostgreSQL.9.5 PostgreSQL
SELECT
	MIN(t1."Value")
FROM
	"ScaledValueRow" t1

