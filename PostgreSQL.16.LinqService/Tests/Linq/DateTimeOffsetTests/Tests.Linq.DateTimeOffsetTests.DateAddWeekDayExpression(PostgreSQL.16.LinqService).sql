BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL
DECLARE @Value Integer -- Int32
SET     @Value = 1

SELECT
	Date_Trunc('day', (t."TransactionDate" + :Value * Interval '1 Day') AT TIME ZONE 'UTC')::Date
FROM
	"Transactions" t

