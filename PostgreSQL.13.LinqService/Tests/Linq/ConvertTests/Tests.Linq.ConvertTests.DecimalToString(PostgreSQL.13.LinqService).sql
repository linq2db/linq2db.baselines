BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	p."MoneyValue"
FROM
	"LinqDataTypes" p
WHERE
	Length(Cast(p."MoneyValue" as text)) > 0

