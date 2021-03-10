BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

SELECT
	Round(p."MoneyValue", 0)
FROM
	"LinqDataTypes" p
WHERE
	Round(p."MoneyValue", 0) <> 0

