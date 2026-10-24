-- PostgreSQL.9.5 PostgreSQL
SELECT
	Trunc((-t."MoneyValue")::Float::decimal, 0)
FROM
	"LinqDataTypes" t
WHERE
	Trunc((-t."MoneyValue")::Float::decimal, 0)::Float <> 0.10000000000000001

