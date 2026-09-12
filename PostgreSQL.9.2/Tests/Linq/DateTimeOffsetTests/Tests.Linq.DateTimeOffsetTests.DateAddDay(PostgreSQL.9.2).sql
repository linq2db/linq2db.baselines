-- PostgreSQL.9.2 PostgreSQL
SELECT
	Date_Trunc('day', (t."TransactionDate" AT TIME ZONE 'UTC') + 5 * Interval '1 Day')
FROM
	"Transactions" t

