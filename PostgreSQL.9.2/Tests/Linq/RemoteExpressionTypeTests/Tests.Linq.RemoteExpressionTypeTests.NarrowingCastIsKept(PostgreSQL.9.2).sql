-- PostgreSQL.9.2 PostgreSQL
SELECT
	(r."A" + r."B")::decimal
FROM
	"DecimalTable" r
LIMIT 2

