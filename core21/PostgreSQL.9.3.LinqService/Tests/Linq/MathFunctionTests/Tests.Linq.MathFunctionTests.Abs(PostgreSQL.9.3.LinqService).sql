BeforeExecute
-- PostgreSQL.9.3 PostgreSQL

SELECT
	Abs(p."MoneyValue")
FROM
	"LinqDataTypes" p
WHERE
	Abs(p."MoneyValue") > 0

