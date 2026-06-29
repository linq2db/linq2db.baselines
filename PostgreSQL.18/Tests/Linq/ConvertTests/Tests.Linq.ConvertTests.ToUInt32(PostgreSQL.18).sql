-- PostgreSQL.18 PostgreSQL13

SELECT
	p."MoneyValue"
FROM
	"LinqDataTypes" p
WHERE
	Floor(p."MoneyValue")::BigInt > 0

