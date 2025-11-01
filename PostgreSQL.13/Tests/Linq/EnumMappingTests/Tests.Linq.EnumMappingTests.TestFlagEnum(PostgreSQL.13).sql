-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	t."ID",
	t."IntValue"
FROM
	"LinqDataTypes" t
WHERE
	(t."IntValue" & 1) <> 0

