-- PostgreSQL.13 PostgreSQL

SELECT
	p."MoneyValue"
FROM
	"LinqDataTypes" p
WHERE
	Floor(p."MoneyValue")::BigInt > 0

