BeforeExecute
-- PostgreSQL.9.3 PostgreSQL

SELECT
	Cast(t."MoneyValue" as decimal(29, 10))
FROM
	"LinqDataTypes" t
WHERE
	Cast(t."MoneyValue" as decimal(29, 10)) > 0

