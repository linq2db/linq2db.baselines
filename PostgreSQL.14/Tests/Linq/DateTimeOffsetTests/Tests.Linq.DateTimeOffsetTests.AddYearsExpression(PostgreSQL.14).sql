BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL
DECLARE @Date Integer -- Int32
SET     @Date = 1

SELECT
	Date_Trunc('day', (t."TransactionDate" + :Date * Interval '1 Year') AT TIME ZONE 'UTC')::Date
FROM
	"Transactions" t

