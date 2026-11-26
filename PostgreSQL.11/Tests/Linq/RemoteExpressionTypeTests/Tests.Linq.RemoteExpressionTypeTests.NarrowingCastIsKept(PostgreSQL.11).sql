-- PostgreSQL.11 PostgreSQL
SELECT
	(r."A" + r."B")::decimal
FROM
	"DecimalTable" r
LIMIT 2

