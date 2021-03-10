BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL

SELECT
	Cast(Floor(Cast(t."MoneyValue" as Float)) as Int)
FROM
	"LinqDataTypes" t
WHERE
	Cast(Floor(Cast(t."MoneyValue" as Float)) as Int) > 0

