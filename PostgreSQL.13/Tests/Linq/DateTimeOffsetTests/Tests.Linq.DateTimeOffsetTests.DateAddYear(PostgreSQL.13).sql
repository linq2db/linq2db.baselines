BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	Date_Trunc('day', (t."TransactionDate" + 11 * Interval '1 Year') AT TIME ZONE 'UTC')::Date
FROM
	"Transactions" t

