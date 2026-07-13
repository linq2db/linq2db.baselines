-- PostgreSQL.9.5 PostgreSQL
SELECT
	SUM(i."DecimalValue")
FROM
	"Inner" i
WHERE
	i."Group" = 1

