-- PostgreSQL.12 PostgreSQL12
DECLARE @Date Integer -- Int32
SET     @Date = 5

SELECT
	Date_Trunc('day', (t."TransactionDate" AT TIME ZONE 'UTC') + :Date * Interval '1 Day')
FROM
	"Transactions" t

