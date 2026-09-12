-- PostgreSQL.9.2 PostgreSQL
SELECT
	Date_Trunc('day', (t."TransactionDate" AT TIME ZONE 'UTC') + -2 * Interval '1 Month')
FROM
	"Transactions" t

