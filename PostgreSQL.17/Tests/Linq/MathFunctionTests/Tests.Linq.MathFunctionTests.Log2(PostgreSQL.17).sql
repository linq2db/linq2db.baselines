BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL
DECLARE @Value Numeric(1, 0) -- Decimal
SET     @Value = 2

SELECT
	t."Value_1"
FROM
	(
		SELECT
			Floor(Log(:Value, p."MoneyValue")::Float) as "Value_1"
		FROM
			"LinqDataTypes" p
	) t
WHERE
	t."Value_1" <> 0.10000000000000001 OR t."Value_1" IS NULL

