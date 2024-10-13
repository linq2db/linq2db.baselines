BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	p."MoneyValue"::text
FROM
	"LinqDataTypes" p
WHERE
	Length(p."MoneyValue"::text) > 0

