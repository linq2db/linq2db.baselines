-- PostgreSQL.13 PostgreSQL

SELECT
	t."ID",
	t."IntValue"
FROM
	"LinqDataTypes" t
WHERE
	(t."IntValue" & 1) <> 0

