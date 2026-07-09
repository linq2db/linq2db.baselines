-- PostgreSQL.18 PostgreSQL13

SELECT
	Date_Trunc('day', (t."TransactionDate" + 5 * Interval '1 Day') AT TIME ZONE 'UTC')::Date
FROM
	"Transactions" t

