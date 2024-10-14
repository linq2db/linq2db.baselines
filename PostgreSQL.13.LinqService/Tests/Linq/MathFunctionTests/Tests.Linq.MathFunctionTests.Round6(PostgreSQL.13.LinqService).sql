BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	t."MoneyValue"::Float
FROM
	"LinqDataTypes" t
WHERE
	ROUND(t."MoneyValue"::Float) <> 0

