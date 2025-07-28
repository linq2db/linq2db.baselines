BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	Date_Trunc('day', (t."TransactionDate" + 5::float8 * Interval '1 Day') AT TIME ZONE 'UTC')::Date
FROM
	"Transactions" t

