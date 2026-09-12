-- PostgreSQL.9.5 PostgreSQL
SELECT
	Extract(epoch From ((((t."TransactionDate" AT TIME ZONE 'UTC') + 96 * Interval '1 Hour') AT TIME ZONE 'UTC') - t."TransactionDate")) / 86400
FROM
	"Transactions" t

