-- PostgreSQL.9.2 PostgreSQL
SELECT
	p."MoneyValue"
FROM
	"LinqDataTypes" p
WHERE
	Floor(p."MoneyValue")::Int > 0

