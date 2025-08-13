BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	Date_Trunc('day', (t."TransactionDate" + Interval '1 Year') AT TIME ZONE 'UTC')::Date
FROM
	"Transactions" t

