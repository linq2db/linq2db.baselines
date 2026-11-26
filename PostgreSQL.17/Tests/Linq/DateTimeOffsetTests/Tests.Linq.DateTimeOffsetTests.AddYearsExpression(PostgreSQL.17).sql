-- PostgreSQL.17 PostgreSQL.15 PostgreSQL12
DECLARE @Date Integer -- Int32
SET     @Date = 1

SELECT
	Date_Trunc('day', (t."TransactionDate" AT TIME ZONE 'UTC') + :Date * Interval '1 Year')
FROM
	"Transactions" t

