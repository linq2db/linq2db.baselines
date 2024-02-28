BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	Sign(p."MoneyValue")
FROM
	"LinqDataTypes" p
WHERE
	Sign(p."MoneyValue") <> 0

