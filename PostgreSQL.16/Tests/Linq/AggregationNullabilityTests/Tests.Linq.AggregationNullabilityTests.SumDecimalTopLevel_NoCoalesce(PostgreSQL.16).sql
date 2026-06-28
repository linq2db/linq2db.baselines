-- PostgreSQL.16 PostgreSQL.15 PostgreSQL13

SELECT
	SUM(i."DecimalValue")
FROM
	"Inner" i
WHERE
	i."Group" = 1

