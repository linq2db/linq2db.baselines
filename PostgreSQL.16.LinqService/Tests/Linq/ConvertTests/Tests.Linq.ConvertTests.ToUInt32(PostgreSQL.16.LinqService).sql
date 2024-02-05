BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL
DECLARE @p Bigint -- Int64
SET     @p = 0

SELECT
	Cast(Floor(t."MoneyValue") as BigInt)
FROM
	"LinqDataTypes" t
WHERE
	Cast(Floor(t."MoneyValue") as BigInt) > :p

