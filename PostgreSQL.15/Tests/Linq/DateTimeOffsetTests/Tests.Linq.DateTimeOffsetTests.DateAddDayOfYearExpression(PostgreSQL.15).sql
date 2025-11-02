-- PostgreSQL.15 PostgreSQL
DECLARE @Value Integer -- Int32
SET     @Value = 3

SELECT
	Date_Trunc('day', (t."TransactionDate" + :Value * Interval '1 Day') AT TIME ZONE 'UTC')::Date
FROM
	"Transactions" t

