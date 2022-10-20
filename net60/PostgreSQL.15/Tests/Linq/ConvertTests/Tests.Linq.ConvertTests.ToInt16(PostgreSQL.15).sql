BeforeExecute
-- PostgreSQL.15 PostgreSQL

SELECT
	Cast(Floor(t."MoneyValue") as SmallInt)
FROM
	"LinqDataTypes" t
WHERE
	Cast(Floor(t."MoneyValue") as SmallInt) > 0

