-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	Date_Trunc('day', (t."TransactionDate" + (-Interval '1 Month') * 3) AT TIME ZONE 'UTC')::Date
FROM
	"Transactions" t

