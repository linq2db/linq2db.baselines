BeforeExecute
-- PostgreSQL.18 PostgreSQL (asynchronously)

SELECT
	t."ID",
	t."IntValue"
FROM
	"LinqDataTypes" t
WHERE
	(t."IntValue" & 1) <> 0

