BeforeExecute
-- PostgreSQL.9.3 PostgreSQL

SELECT
	Round(t."MoneyValue", 1)
FROM
	"LinqDataTypes" t
WHERE
	Round(t."MoneyValue", 1) <> 0

