-- PostgreSQL.13 PostgreSQL12
DECLARE @Value Integer -- Int32
SET     @Value = 5

SELECT
	Date_Trunc('day', (t."TransactionDate" AT TIME ZONE 'UTC') + :Value * Interval '1 Day')
FROM
	"Transactions" t

