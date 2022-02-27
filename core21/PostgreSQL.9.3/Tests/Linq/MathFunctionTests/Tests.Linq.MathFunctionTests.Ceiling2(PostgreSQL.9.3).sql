BeforeExecute
-- PostgreSQL.9.3 PostgreSQL

SELECT
	Ceiling(p."MoneyValue")
FROM
	"LinqDataTypes" p
WHERE
	Ceiling(p."MoneyValue") <> 0

