BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	Trunc((-t."MoneyValue"), 0)
FROM
	"LinqDataTypes" t
WHERE
	Trunc((-t."MoneyValue"), 0)::Float <> 0.10000000000000001::float8

