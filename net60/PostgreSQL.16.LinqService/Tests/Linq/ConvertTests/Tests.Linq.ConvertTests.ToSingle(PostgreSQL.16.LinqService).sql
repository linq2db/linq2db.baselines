BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	Cast(t."MoneyValue" as Real)
FROM
	"LinqDataTypes" t
WHERE
	Cast(t."MoneyValue" as Real) > 0

