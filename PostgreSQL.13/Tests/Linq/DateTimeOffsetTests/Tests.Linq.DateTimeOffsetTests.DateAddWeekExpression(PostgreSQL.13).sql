-- PostgreSQL.13 PostgreSQL12
DECLARE @Value Integer -- Int32
SET     @Value = -1

SELECT
	Date_Trunc('day', (t."TransactionDate" AT TIME ZONE 'UTC') + (:Value * Interval '1 Day') * 7)
FROM
	"Transactions" t

