-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
SELECT
	EXTRACT(EPOCH FROM (((((t."TransactionDate" AT TIME ZONE 'UTC') + 96 * Interval '1 Hour') AT TIME ZONE 'UTC'))::timestamp - (t."TransactionDate")::timestamp)) / 86400
FROM
	"Transactions" t

