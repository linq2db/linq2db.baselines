BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	Trunc(p."MoneyValue", 0)
FROM
	"LinqDataTypes" p
WHERE
	(Trunc(p."MoneyValue", 0) <> 0.1 OR Trunc(p."MoneyValue", 0) IS NULL)

