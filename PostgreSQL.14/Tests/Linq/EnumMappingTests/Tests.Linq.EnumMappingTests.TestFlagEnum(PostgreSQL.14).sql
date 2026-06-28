-- PostgreSQL.14 PostgreSQL.13 PostgreSQL13

SELECT
	t."ID",
	t."IntValue"
FROM
	"TestTable5" t
WHERE
	(t."IntValue" & 1) <> 0

