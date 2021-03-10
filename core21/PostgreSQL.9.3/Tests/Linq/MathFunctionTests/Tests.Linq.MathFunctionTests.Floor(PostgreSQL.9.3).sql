BeforeExecute
-- PostgreSQL.9.3 PostgreSQL

SELECT
	Floor(-(p."MoneyValue" + 1))
FROM
	"LinqDataTypes" p
WHERE
	Floor(-(p."MoneyValue" + 1)) <> 0

