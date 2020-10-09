BeforeExecute
-- PostgreSQL.9.3 PostgreSQL

SELECT 
	Cast((t."MoneyValue" * 1000) as Decimal(10))
FROM
	"LinqDataTypes" t

