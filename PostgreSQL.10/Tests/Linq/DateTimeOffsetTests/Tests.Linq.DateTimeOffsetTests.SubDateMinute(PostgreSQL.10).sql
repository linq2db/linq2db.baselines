-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
SELECT
	Extract(epoch From ((((t."TransactionDate" AT TIME ZONE 'UTC') + 100 * Interval '1 Minute') AT TIME ZONE 'UTC') - t."TransactionDate")) / 60
FROM
	"Transactions" t

