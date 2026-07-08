-- PostgreSQL.18 PostgreSQL12

SELECT
	Date_Trunc('day', (t."TransactionDate" + -2 * Interval '1 Month') AT TIME ZONE 'UTC')::Date
FROM
	"Transactions" t

