BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

SELECT
	Round(p."MoneyValue", 0)
FROM
	"LinqDataTypes" p
WHERE
	Round(p."MoneyValue", 0) <> 0

