-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
SELECT
	t."ID",
	t."IntValue"
FROM
	"TestTable5" t
WHERE
	(t."IntValue" & 1) <> 0

