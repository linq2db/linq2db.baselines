-- PostgreSQL.15 PostgreSQL13

SELECT
	p."MoneyValue"
FROM
	"LinqDataTypes" p
WHERE
	Floor(p."MoneyValue")::decimal(20) > 0

