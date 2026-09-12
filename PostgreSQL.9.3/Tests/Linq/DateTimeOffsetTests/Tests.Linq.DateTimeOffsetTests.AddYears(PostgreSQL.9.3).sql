-- PostgreSQL.9.3 PostgreSQL
SELECT
	Date_Trunc('day', (t."TransactionDate" AT TIME ZONE 'UTC') + Interval '1 Year')
FROM
	"Transactions" t

