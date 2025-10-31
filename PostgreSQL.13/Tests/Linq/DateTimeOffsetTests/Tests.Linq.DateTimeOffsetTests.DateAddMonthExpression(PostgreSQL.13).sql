-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
DECLARE @Value Integer -- Int32
SET     @Value = 2

SELECT
	Date_Trunc('day', (t."TransactionDate" + :Value * Interval '1 Month') AT TIME ZONE 'UTC')::Date
FROM
	"Transactions" t

