BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

SELECT
	Cast(t."MoneyValue" as text)
FROM
	"LinqDataTypes" t
WHERE
	Length(Cast(t."MoneyValue" as text)) > 0

