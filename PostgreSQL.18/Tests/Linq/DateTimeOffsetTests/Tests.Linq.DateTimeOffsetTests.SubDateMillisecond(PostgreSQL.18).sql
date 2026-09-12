-- PostgreSQL.18 PostgreSQL12
SELECT
	Extract(epoch From ((((t."TransactionDate" AT TIME ZONE 'UTC') + 1 * Interval '1 Second') AT TIME ZONE 'UTC') - t."TransactionDate")) * 1000
FROM
	"Transactions" t

