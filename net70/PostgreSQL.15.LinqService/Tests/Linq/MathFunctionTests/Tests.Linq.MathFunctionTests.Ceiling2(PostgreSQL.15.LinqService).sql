BeforeExecute
-- PostgreSQL.15 PostgreSQL

SELECT
	Ceiling(p."MoneyValue")
FROM
	"LinqDataTypes" p
WHERE
	Ceiling(p."MoneyValue") <> 0

