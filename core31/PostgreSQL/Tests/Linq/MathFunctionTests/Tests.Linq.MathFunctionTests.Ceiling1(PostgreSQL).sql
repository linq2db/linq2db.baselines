BeforeExecute
-- PostgreSQL PostgreSQL.9.5 PostgreSQL

SELECT
	Ceiling(-(p."MoneyValue" + 1))
FROM
	"LinqDataTypes" p
WHERE
	Ceiling(-(p."MoneyValue" + 1)) <> 0

