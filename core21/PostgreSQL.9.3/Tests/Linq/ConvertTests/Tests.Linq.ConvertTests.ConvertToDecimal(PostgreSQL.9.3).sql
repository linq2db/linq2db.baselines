BeforeExecute
-- PostgreSQL.9.3 PostgreSQL

SELECT
	Cast(t."MoneyValue" as decimal)
FROM
	"LinqDataTypes" t
WHERE
	Cast(t."MoneyValue" as decimal) > 0

