BeforeExecute
-- PostgreSQL PostgreSQL.9.5 PostgreSQL

SELECT
	Round(t."MoneyValue", 1)
FROM
	"LinqDataTypes" t
WHERE
	Round(t."MoneyValue", 1) <> 0 AND Round(t."MoneyValue", 1) <> 7

