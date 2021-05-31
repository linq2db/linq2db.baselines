BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

SELECT
	Cast(t."MoneyValue" as decimal(29, 10))
FROM
	"LinqDataTypes" t
WHERE
	Cast(t."MoneyValue" as decimal(29, 10)) > 0

