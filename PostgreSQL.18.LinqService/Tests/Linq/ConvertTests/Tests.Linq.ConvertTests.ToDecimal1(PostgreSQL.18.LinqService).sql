BeforeExecute
-- PostgreSQL.18 PostgreSQL

SELECT
	(t."MoneyValue" * 1000::decimal(4))::decimal(10, 4)
FROM
	"LinqDataTypes" t

