-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
SELECT
	(r."A" + r."B")::decimal
FROM
	"DecimalTable" r
LIMIT 2

