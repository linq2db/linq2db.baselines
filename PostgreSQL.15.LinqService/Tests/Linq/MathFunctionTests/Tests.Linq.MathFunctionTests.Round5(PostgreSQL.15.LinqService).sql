BeforeExecute
-- PostgreSQL.15 PostgreSQL

SELECT
	t."MoneyValue"
FROM
	"LinqDataTypes" t
WHERE
	ROUND(t."MoneyValue") <> 0

