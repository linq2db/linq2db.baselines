BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

SELECT 
	Cast((t."MoneyValue" * 1000) as Decimal(10))
FROM
	"LinqDataTypes" t

