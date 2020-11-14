BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

SELECT
	Sign(p."MoneyValue")
FROM
	"LinqDataTypes" p
WHERE
	Sign(p."MoneyValue") <> 0

