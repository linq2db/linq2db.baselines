-- PostgreSQL.14 PostgreSQL.13 PostgreSQL12
SELECT
	Date_Trunc('day', (t."TransactionDate" AT TIME ZONE 'UTC') + 5 * Interval '1 Day')
FROM
	"Transactions" t

