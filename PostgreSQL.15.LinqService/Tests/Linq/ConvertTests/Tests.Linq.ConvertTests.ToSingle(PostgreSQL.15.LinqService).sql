BeforeExecute
-- PostgreSQL.15 PostgreSQL

SELECT
	p."MoneyValue"
FROM
	"LinqDataTypes" p
WHERE
	p."MoneyValue"::Real > 0::float4

