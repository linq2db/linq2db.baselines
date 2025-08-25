BeforeExecute
-- PostgreSQL.18 PostgreSQL (asynchronously)
DECLARE @Date Integer -- Int32
SET     @Date = 1

SELECT
	Date_Trunc('day', (t."TransactionDate" + :Date * Interval '1 Year') AT TIME ZONE 'UTC')::Date
FROM
	"Transactions" t

