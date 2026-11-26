-- PostgreSQL.9.2 PostgreSQL
SELECT
	Extract(epoch From ((((t."TransactionDate" AT TIME ZONE 'UTC') + 100 * Interval '1 Minute') AT TIME ZONE 'UTC') - t."TransactionDate"))
FROM
	"Transactions" t

