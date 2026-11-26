-- PostgreSQL.19 PostgreSQL12
SELECT
	(r."A" + r."B")::decimal
FROM
	"DecimalTable" r
LIMIT 2

