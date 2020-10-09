BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

SELECT 
	Cast((t."MoneyValue" * 1000) as Decimal)
FROM
	"LinqDataTypes" t

