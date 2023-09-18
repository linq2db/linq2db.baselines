BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	Cast((t."MoneyValue" * 1000) as Decimal(10))
FROM
	"LinqDataTypes" t

