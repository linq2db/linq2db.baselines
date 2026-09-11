-- PostgreSQL.9.3 PostgreSQL
SELECT
	SUM(i."DecimalValue")
FROM
	"Inner" i
WHERE
	i."Group" = 1

