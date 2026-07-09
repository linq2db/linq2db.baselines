-- PostgreSQL.17 PostgreSQL.15 PostgreSQL13

SELECT
	Date_Trunc('day', (t."TransactionDate" + Interval '1 Year') AT TIME ZONE 'UTC')::Date
FROM
	"Transactions" t

