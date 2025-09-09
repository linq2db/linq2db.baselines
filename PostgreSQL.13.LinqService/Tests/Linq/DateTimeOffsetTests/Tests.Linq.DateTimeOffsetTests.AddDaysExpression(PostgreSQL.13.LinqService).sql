BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL (asynchronously)
DECLARE @Date Integer -- Int32
SET     @Date = 5

SELECT
	Date_Trunc('day', (t."TransactionDate" + :Date * Interval '1 Day') AT TIME ZONE 'UTC')::Date
FROM
	"Transactions" t

