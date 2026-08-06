-- PostgreSQL.18 PostgreSQL12
SELECT
	p."MoneyValue"
FROM
	"LinqDataTypes" p
WHERE
	Floor(p."MoneyValue")::SmallInt > 0

