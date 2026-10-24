-- PostgreSQL.19 PostgreSQL12
SELECT
	COUNT(r."Value") OVER (ORDER BY r."Id")
FROM
	"ScaledValueRow" r
ORDER BY
	r."Id"

-- PostgreSQL.19 PostgreSQL12
SELECT
	MAX(t1."Value")
FROM
	"ScaledValueRow" t1

-- PostgreSQL.19 PostgreSQL12
SELECT
	MIN(t1."Value")
FROM
	"ScaledValueRow" t1

