-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	p."MoneyValue"
FROM
	"LinqDataTypes" p
WHERE
	Floor(p."MoneyValue")::BigInt > 0

