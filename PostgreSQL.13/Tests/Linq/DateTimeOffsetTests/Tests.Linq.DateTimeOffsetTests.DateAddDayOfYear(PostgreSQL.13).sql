-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	Date_Trunc('day', (t."TransactionDate" + 3 * Interval '1 Day') AT TIME ZONE 'UTC')::Date
FROM
	"Transactions" t

