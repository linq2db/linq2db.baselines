BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL (asynchronously)

SELECT
	Date_Trunc('day', (t."TransactionDate" + Interval '1 Day') AT TIME ZONE 'UTC')::Date
FROM
	"Transactions" t

