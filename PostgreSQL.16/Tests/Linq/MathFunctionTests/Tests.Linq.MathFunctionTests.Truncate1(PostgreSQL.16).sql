BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	Trunc(p."MoneyValue", 0)
FROM
	"LinqDataTypes" p
WHERE
	Trunc(p."MoneyValue", 0) <> 0.1

