-- PostgreSQL.14 PostgreSQL.13 PostgreSQL

SELECT
	t."ID",
	t."IntValue"
FROM
	"TestTable5" t
WHERE
	(t."IntValue" & 1) <> 0

