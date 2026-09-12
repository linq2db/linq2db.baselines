-- PostgreSQL.9.5 PostgreSQL
SELECT
	Date_Trunc('day', (t."TransactionDate" AT TIME ZONE 'UTC') + -Interval '1 Month' * 3)
FROM
	"Transactions" t

