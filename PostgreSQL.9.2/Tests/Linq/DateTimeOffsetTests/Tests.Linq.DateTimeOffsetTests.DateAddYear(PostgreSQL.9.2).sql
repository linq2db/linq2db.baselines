-- PostgreSQL.9.2 PostgreSQL
SELECT
	Date_Trunc('day', (t."TransactionDate" AT TIME ZONE 'UTC') + 11 * Interval '1 Year')
FROM
	"Transactions" t

