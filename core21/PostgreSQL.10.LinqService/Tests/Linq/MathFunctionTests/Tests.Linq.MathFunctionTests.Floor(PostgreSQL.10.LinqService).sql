BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL

SELECT
	Floor(-(p."MoneyValue" + 1))
FROM
	"LinqDataTypes" p
WHERE
	Floor(-(p."MoneyValue" + 1)) <> 0

