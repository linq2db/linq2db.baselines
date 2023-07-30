BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL
DECLARE @p Numeric(1, 0) -- Decimal
SET     @p = 0

SELECT
	Cast(Floor(t."MoneyValue") as decimal(20))
FROM
	"LinqDataTypes" t
WHERE
	Cast(Floor(t."MoneyValue") as decimal(20)) > :p

