BeforeExecute
-- PostgreSQL.9.3 PostgreSQL

SELECT
	Cast(t."MoneyValue" as text)
FROM
	"LinqDataTypes" t
WHERE
	Length(Cast(t."MoneyValue" as text)) > 0

