-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
DECLARE @Value Integer -- Int32
SET     @Value = 11

SELECT
	Date_Trunc('day', (t."TransactionDate" + :Value * Interval '1 Year') AT TIME ZONE 'UTC')::Date
FROM
	"Transactions" t

