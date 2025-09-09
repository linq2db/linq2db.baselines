BeforeExecute
-- PostgreSQL.15 PostgreSQL (asynchronously)

SELECT
	t."ID",
	t."IntValue"
FROM
	"LinqDataTypes" t
WHERE
	(t."IntValue" & 1) <> 0

