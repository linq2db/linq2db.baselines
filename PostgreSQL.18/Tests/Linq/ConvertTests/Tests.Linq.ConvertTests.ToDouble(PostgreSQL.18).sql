BeforeExecute
-- PostgreSQL.18 PostgreSQL

SELECT
	p."MoneyValue"
FROM
	"LinqDataTypes" p
WHERE
	Floor(p."MoneyValue"::Float)::Int > 0

