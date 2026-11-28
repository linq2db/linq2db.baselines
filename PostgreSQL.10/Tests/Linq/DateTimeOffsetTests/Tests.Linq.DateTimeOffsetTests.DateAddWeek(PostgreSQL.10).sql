-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
SELECT
	Date_Trunc('day', (t."TransactionDate" AT TIME ZONE 'UTC') + -Interval '1 Day' * 7)
FROM
	"Transactions" t

