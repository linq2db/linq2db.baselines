BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

SELECT
	Trunc((-t."MoneyValue"), 0)
FROM
	"LinqDataTypes" t
WHERE
	Trunc((-t."MoneyValue"), 0) <> 0.10000000000000001

