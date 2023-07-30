BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	Cast(t."MoneyValue" as Float)
FROM
	"LinqDataTypes" t
WHERE
	Cast(t."MoneyValue" as Float) > 0

