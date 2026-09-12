-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
SELECT
	Extract(epoch From ((((t."TransactionDate" AT TIME ZONE 'UTC') + 1 * Interval '1 Second') AT TIME ZONE 'UTC') - t."TransactionDate")) * 1000
FROM
	"Transactions" t

