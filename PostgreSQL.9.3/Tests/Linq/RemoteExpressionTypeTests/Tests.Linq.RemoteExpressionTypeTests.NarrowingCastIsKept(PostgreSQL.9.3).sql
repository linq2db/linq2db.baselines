-- PostgreSQL.9.3 PostgreSQL
SELECT
	(r."A" + r."B")::decimal
FROM
	"DecimalTable" r
LIMIT 2

