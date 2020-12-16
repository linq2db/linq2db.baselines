BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	Cast(t."MoneyValue" as Decimal(29, 10))
FROM
	"LinqDataTypes" t
WHERE
	Cast(t."MoneyValue" as Decimal(29, 10)) > 0

