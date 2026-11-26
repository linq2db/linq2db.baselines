-- PostgreSQL.17 PostgreSQL.15 PostgreSQL12
SELECT
	Extract(epoch From ((((t."TransactionDate" AT TIME ZONE 'UTC') + 100 * Interval '1 Minute') AT TIME ZONE 'UTC') - t."TransactionDate")) / 60
FROM
	"Transactions" t

