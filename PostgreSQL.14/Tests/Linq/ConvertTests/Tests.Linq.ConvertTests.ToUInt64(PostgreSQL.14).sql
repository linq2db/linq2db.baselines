-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	p."MoneyValue"
FROM
	"LinqDataTypes" p
WHERE
	Floor(p."MoneyValue")::decimal(20) > 0

