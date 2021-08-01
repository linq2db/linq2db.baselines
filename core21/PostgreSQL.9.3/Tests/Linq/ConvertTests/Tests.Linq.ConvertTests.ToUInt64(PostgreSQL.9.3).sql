BeforeExecute
-- PostgreSQL.9.3 PostgreSQL
DECLARE @p_1 Numeric(1, 0) -- Decimal
SET     @p_1 = 0

SELECT
	Cast(Floor(t."MoneyValue") as Decimal)
FROM
	"LinqDataTypes" t
WHERE
	Cast(Floor(t."MoneyValue") as Decimal) > :p_1

