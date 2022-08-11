BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	Cast(t."MoneyValue" as decimal)
FROM
	"LinqDataTypes" t
WHERE
	Cast(t."MoneyValue" as decimal) > 0

