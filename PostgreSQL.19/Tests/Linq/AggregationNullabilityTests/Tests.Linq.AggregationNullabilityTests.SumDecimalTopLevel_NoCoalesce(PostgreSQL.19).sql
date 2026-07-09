-- PostgreSQL.19 PostgreSQL12

SELECT
	SUM(i."DecimalValue")
FROM
	"Inner" i
WHERE
	i."Group" = 1

