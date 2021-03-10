BeforeExecute
-- PostgreSQL.9.3 PostgreSQL

SELECT
	Ceiling(-(p."MoneyValue" + 1))
FROM
	"LinqDataTypes" p
WHERE
	Ceiling(-(p."MoneyValue" + 1)) <> 0

