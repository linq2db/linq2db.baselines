BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL (asynchronously)

SELECT
	Date_Trunc('day', (t."TransactionDate" + (-Interval '1 Day') * 7) AT TIME ZONE 'UTC')::Date
FROM
	"Transactions" t

