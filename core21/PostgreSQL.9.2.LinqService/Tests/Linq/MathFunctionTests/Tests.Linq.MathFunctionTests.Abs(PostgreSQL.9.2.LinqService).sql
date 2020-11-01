BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

SELECT
	Abs(p."MoneyValue")
FROM
	"LinqDataTypes" p
WHERE
	Abs(p."MoneyValue") > 0

