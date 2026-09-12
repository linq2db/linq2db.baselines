-- PostgreSQL.11 PostgreSQL
SELECT
	Date_Trunc('day', (t."TransactionDate" AT TIME ZONE 'UTC') + -Interval '1 Day' * 7)
FROM
	"Transactions" t

