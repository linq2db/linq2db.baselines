-- PostgreSQL.13 PostgreSQL12
SELECT
	Date_Trunc('day', (t."TransactionDate" + -Interval '1 Day' * 7) AT TIME ZONE 'UTC')::Date
FROM
	"Transactions" t

