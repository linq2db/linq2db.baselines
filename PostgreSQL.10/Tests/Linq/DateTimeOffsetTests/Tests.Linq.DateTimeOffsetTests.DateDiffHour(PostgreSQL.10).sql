-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
SELECT
	EXTRACT(EPOCH FROM (((((t."TransactionDate" AT TIME ZONE 'UTC') + 100 * Interval '1 Hour') AT TIME ZONE 'UTC'))::timestamp - (t."TransactionDate")::timestamp)) / 3600
FROM
	"Transactions" t

