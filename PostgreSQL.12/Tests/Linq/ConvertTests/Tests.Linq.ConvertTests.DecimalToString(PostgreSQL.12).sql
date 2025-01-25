BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

SELECT
	p."MoneyValue"::text
FROM
	"LinqDataTypes" p
WHERE
	Length(p."MoneyValue"::text) > 0

