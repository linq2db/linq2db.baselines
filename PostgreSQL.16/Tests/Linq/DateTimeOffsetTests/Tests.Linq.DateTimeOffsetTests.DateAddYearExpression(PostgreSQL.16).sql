-- PostgreSQL.16 PostgreSQL.15 PostgreSQL13
DECLARE @Value Integer -- Int32
SET     @Value = 11

SELECT
	Date_Trunc('day', (t."TransactionDate" + :Value * Interval '1 Year') AT TIME ZONE 'UTC')::Date
FROM
	"Transactions" t

