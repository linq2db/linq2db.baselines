-- PostgreSQL.14 PostgreSQL.13 PostgreSQL12
SELECT
	p."MoneyValue"
FROM
	"LinqDataTypes" p
WHERE
	Floor(p."MoneyValue")::BigInt > 0

