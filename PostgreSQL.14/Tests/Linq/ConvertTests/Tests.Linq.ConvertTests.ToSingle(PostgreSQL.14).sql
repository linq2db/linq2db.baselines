-- PostgreSQL.14 PostgreSQL.13 PostgreSQL

SELECT
	p."MoneyValue"
FROM
	"LinqDataTypes" p
WHERE
	p."MoneyValue"::Real > 0

