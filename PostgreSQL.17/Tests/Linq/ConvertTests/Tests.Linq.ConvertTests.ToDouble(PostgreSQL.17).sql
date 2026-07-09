-- PostgreSQL.17 PostgreSQL.15 PostgreSQL13

SELECT
	p."MoneyValue"
FROM
	"LinqDataTypes" p
WHERE
	Floor(p."MoneyValue"::Float)::Int > 0

