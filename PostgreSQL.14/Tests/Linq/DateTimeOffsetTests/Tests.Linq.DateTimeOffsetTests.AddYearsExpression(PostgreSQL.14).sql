-- PostgreSQL.14 PostgreSQL.13 PostgreSQL13
DECLARE @Date Integer -- Int32
SET     @Date = 1

SELECT
	Date_Trunc('day', (t."TransactionDate" + :Date * Interval '1 Year') AT TIME ZONE 'UTC')::Date
FROM
	"Transactions" t

