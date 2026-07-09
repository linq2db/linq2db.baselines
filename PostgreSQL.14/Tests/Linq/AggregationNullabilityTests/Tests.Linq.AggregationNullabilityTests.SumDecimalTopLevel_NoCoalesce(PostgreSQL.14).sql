-- PostgreSQL.14 PostgreSQL.13 PostgreSQL13

SELECT
	SUM(i."DecimalValue")
FROM
	"Inner" i
WHERE
	i."Group" = 1

