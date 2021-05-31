BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
DECLARE @p_1 Integer -- Int32
SET     @p_1 = 0

SELECT
	Cast(Floor(t."MoneyValue") as Int)
FROM
	"LinqDataTypes" t
WHERE
	Cast(Floor(t."MoneyValue") as Int) > :p_1

