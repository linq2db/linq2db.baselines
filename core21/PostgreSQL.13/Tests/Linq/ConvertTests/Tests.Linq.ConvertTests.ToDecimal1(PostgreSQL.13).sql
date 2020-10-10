BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	Cast((t."MoneyValue" * 1000) as Decimal(10))
FROM
	"LinqDataTypes" t

