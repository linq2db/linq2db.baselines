-- PostgreSQL.9.3 PostgreSQL
DECLARE @Value Integer -- Int32
SET     @Value = -1

SELECT
	Date_Trunc('day', (t."TransactionDate" AT TIME ZONE 'UTC') + (:Value * Interval '1 Month') * 3)
FROM
	"Transactions" t

