BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL

SELECT
	Cast(t."MoneyValue" as VarChar(31))
FROM
	"LinqDataTypes" t
WHERE
	Length(Cast(t."MoneyValue" as VarChar(31))) > 0

