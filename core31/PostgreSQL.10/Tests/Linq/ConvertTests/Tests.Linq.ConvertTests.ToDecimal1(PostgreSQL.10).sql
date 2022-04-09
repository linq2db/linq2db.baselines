BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL

SELECT
	Cast((t."MoneyValue" * 1000) as Decimal(10))
FROM
	"LinqDataTypes" t

