-- PostgreSQL.13 PostgreSQL12
SELECT
	Date_Trunc('day', (t."TransactionDate" AT TIME ZONE 'UTC') + 11 * Interval '1 Year')
FROM
	"Transactions" t

