BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	Date_Trunc('day', (t."TransactionDate" + (-Interval '1 Day') * 7) AT TIME ZONE 'UTC')::Date
FROM
	"Transactions" t

