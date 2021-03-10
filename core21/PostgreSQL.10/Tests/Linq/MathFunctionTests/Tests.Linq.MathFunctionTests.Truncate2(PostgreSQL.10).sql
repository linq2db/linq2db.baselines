BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL

SELECT
	Trunc((-p."MoneyValue"), 0)
FROM
	"LinqDataTypes" p
WHERE
	Trunc((-p."MoneyValue"), 0) <> 0.10000000000000001

