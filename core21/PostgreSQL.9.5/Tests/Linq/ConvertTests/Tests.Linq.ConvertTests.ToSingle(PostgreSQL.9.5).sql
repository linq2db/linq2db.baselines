BeforeExecute
-- PostgreSQL.9.5 PostgreSQL

SELECT
	Cast(t."MoneyValue" as Real)
FROM
	"LinqDataTypes" t
WHERE
	Cast(t."MoneyValue" as Real) > 0

