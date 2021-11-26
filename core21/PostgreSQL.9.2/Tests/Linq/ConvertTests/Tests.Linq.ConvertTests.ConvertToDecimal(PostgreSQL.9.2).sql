BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

SELECT
	Cast(t."MoneyValue" as decimal)
FROM
	"LinqDataTypes" t
WHERE
	Cast(t."MoneyValue" as decimal) > 0

