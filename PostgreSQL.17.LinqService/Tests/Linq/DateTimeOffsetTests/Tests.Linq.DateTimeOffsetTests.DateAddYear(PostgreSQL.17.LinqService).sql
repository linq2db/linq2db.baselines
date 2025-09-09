BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL (asynchronously)

SELECT
	Date_Trunc('day', (t."TransactionDate" + 11 * Interval '1 Year') AT TIME ZONE 'UTC')::Date
FROM
	"Transactions" t

