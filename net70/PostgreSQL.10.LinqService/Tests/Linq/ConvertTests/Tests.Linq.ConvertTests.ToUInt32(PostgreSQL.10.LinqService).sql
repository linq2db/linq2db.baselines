BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
DECLARE @p Bigint -- Int64
SET     @p = 0

SELECT
	Cast(Floor(t."MoneyValue") as BigInt)
FROM
	"LinqDataTypes" t
WHERE
	Cast(Floor(t."MoneyValue") as BigInt) > :p

