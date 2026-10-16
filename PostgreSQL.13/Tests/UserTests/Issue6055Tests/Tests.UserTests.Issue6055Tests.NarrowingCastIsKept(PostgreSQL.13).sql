-- PostgreSQL.13 PostgreSQL12
SELECT
	(r."A" + r."B")::decimal
FROM
	"DecimalTable" r
LIMIT 2

