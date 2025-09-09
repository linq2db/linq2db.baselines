BeforeExecute
-- PostgreSQL.18 PostgreSQL (asynchronously)
DECLARE @Value Integer -- Int32
SET     @Value = 5

SELECT
	Date_Trunc('day', (t."TransactionDate" + :Value * Interval '1 Day') AT TIME ZONE 'UTC')::Date
FROM
	"Transactions" t

