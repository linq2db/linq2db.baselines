BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
DECLARE @Date Integer -- Int32
SET     @Date = -2

SELECT
	Date_Trunc('day', (t."TransactionDate" + :Date * Interval '1 Month') AT TIME ZONE 'UTC')::Date
FROM
	"Transactions" t

