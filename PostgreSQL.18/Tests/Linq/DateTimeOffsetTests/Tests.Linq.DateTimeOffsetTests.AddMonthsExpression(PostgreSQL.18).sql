-- PostgreSQL.18 PostgreSQL12
DECLARE @Date Integer -- Int32
SET     @Date = -2

SELECT
	Date_Trunc('day', (t."TransactionDate" AT TIME ZONE 'UTC') + :Date * Interval '1 Month')
FROM
	"Transactions" t

