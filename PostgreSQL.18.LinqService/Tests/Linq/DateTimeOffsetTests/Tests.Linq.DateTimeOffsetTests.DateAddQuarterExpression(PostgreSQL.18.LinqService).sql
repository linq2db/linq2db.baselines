BeforeExecute
-- PostgreSQL.18 PostgreSQL (asynchronously)
DECLARE @Value Integer -- Int32
SET     @Value = -1

SELECT
	Date_Trunc('day', (t."TransactionDate" + (:Value * Interval '1 Month') * 3) AT TIME ZONE 'UTC')::Date
FROM
	"Transactions" t

