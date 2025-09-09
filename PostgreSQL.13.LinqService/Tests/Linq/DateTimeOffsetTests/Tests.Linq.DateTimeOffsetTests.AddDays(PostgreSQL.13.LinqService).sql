BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL (asynchronously)

SELECT
	Date_Trunc('day', (t."TransactionDate" + 5 * Interval '1 Day') AT TIME ZONE 'UTC')::Date
FROM
	"Transactions" t

