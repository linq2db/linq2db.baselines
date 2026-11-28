-- PostgreSQL.17 PostgreSQL.15 PostgreSQL12
SELECT
	Date_Trunc('day', (t."TransactionDate" AT TIME ZONE 'UTC') + Interval '1 Year')
FROM
	"Transactions" t

