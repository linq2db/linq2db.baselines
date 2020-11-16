BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

SELECT
	Degrees(Cast(t."MoneyValue" as Float))
FROM
	"LinqDataTypes" t
WHERE
	(Degrees(Cast(t."MoneyValue" as Float)) <> 0.10000000000000001 OR Degrees(Cast(t."MoneyValue" as Float)) IS NULL)

