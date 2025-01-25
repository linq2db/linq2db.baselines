BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	Date_Trunc('day', (t."TransactionDate" + 2 * Interval '1 Month') AT TIME ZONE 'UTC')::Date
FROM
	"Transactions" t

