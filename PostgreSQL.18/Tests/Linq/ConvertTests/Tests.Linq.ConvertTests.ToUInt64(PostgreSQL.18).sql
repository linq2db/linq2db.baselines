BeforeExecute
-- PostgreSQL.18 PostgreSQL

SELECT
	p."MoneyValue"
FROM
	"LinqDataTypes" p
WHERE
	Floor(p."MoneyValue")::decimal(20) > 0

