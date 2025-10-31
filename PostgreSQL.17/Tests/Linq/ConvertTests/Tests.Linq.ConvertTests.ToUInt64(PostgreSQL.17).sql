-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	p."MoneyValue"
FROM
	"LinqDataTypes" p
WHERE
	Floor(p."MoneyValue")::decimal(20) > 0

