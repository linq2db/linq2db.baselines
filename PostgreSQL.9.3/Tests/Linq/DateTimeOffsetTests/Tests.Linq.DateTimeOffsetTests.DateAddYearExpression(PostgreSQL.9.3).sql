-- PostgreSQL.9.3 PostgreSQL
DECLARE @Value Integer -- Int32
SET     @Value = 11

SELECT
	Date_Trunc('day', (t."TransactionDate" AT TIME ZONE 'UTC') + :Value * Interval '1 Year')
FROM
	"Transactions" t

