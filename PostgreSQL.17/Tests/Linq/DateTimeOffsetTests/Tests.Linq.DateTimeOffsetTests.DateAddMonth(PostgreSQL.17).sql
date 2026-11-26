-- PostgreSQL.17 PostgreSQL.15 PostgreSQL12
SELECT
	Date_Trunc('day', (t."TransactionDate" AT TIME ZONE 'UTC') + 2 * Interval '1 Month')
FROM
	"Transactions" t

