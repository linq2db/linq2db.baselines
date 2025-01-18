BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	Date_Trunc('day', (t."TransactionDate" + -2 * Interval '1 Month') AT TIME ZONE 'UTC')::Date
FROM
	"Transactions" t

