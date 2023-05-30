BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
DECLARE @p Integer -- Int32
SET     @p = 0

SELECT
	Cast(Floor(t."MoneyValue") as Int)
FROM
	"LinqDataTypes" t
WHERE
	Cast(Floor(t."MoneyValue") as Int) > :p

