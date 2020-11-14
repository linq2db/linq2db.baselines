BeforeExecute
-- PostgreSQL.9.3 PostgreSQL

SELECT
	Cast(Floor(t."MoneyValue") as SmallInt)
FROM
	"LinqDataTypes" t
WHERE
	Cast(Floor(t."MoneyValue") as SmallInt) > 0

