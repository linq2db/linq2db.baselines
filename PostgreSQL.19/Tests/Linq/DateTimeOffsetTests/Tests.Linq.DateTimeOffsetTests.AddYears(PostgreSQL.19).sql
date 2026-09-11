-- PostgreSQL.19 PostgreSQL12
SELECT
	Date_Trunc('day', (t."TransactionDate" + Interval '1 Year') AT TIME ZONE 'UTC')::Date
FROM
	"Transactions" t

