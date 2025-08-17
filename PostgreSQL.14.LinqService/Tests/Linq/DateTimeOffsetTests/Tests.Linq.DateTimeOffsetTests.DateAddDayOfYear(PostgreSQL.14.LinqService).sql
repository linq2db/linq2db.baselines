BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL (asynchronously)

SELECT
	Date_Trunc('day', (t."TransactionDate" + 3 * Interval '1 Day') AT TIME ZONE 'UTC')::Date
FROM
	"Transactions" t

