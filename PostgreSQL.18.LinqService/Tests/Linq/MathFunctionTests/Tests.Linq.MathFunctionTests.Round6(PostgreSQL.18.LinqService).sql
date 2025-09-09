BeforeExecute
-- PostgreSQL.18 PostgreSQL (asynchronously)

SELECT
	t."MoneyValue"
FROM
	"LinqDataTypes" t
WHERE
	ROUND(t."MoneyValue"::Float) <> 0

