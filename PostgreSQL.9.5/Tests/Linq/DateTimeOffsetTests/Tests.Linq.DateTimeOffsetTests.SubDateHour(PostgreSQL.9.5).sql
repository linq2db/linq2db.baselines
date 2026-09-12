-- PostgreSQL.9.5 PostgreSQL
SELECT
	Extract(epoch From ((((t."TransactionDate" AT TIME ZONE 'UTC') + 100 * Interval '1 Hour') AT TIME ZONE 'UTC') - t."TransactionDate")) / 3600
FROM
	"Transactions" t

