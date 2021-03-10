BeforeExecute
-- PostgreSQL.9.3 PostgreSQL

SELECT
	Round(p."MoneyValue", 0)
FROM
	"LinqDataTypes" p
WHERE
	Round(p."MoneyValue", 0) <> 0

