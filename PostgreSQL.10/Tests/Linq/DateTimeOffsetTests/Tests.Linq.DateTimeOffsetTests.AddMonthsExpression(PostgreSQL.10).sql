-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
DECLARE @Date Integer -- Int32
SET     @Date = -2

SELECT
	Date_Trunc('day', (t."TransactionDate" AT TIME ZONE 'UTC') + :Date * Interval '1 Month')
FROM
	"Transactions" t

