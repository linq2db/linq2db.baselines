-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
DECLARE @Date Integer -- Int32
SET     @Date = 5

SELECT
	Date_Trunc('day', (t."TransactionDate" AT TIME ZONE 'UTC') + :Date * Interval '1 Day')
FROM
	"Transactions" t

