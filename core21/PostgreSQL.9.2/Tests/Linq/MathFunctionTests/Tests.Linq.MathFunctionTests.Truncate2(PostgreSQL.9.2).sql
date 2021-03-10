BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

SELECT
	Trunc((-p."MoneyValue"), 0)
FROM
	"LinqDataTypes" p
WHERE
	Trunc((-p."MoneyValue"), 0) <> 0.10000000000000001

