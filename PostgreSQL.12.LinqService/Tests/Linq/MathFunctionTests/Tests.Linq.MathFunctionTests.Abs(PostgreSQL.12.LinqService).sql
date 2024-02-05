BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

SELECT
	Abs(p."MoneyValue")
FROM
	"LinqDataTypes" p
WHERE
	Abs(p."MoneyValue") > 0

