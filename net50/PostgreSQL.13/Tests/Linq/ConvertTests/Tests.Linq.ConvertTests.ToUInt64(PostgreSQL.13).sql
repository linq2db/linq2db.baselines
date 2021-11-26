BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
DECLARE @p_1 Numeric(1, 0) -- Decimal
SET     @p_1 = 0

SELECT
	Cast(Floor(t."MoneyValue") as decimal(20))
FROM
	"LinqDataTypes" t
WHERE
	Cast(Floor(t."MoneyValue") as decimal(20)) > :p_1

