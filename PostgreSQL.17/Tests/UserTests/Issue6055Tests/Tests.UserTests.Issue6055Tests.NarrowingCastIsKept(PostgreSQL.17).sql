-- PostgreSQL.17 PostgreSQL.15 PostgreSQL12
SELECT
	(r."A" + r."B")::decimal
FROM
	"DecimalTable" r
LIMIT 2

