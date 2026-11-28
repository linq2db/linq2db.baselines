-- PostgreSQL.16 PostgreSQL.15 PostgreSQL12
SELECT
	EXTRACT(EPOCH FROM (((((t."TransactionDate" AT TIME ZONE 'UTC') + 96 * Interval '1 Hour') AT TIME ZONE 'UTC'))::timestamp - (t."TransactionDate")::timestamp)) / 86400
FROM
	"Transactions" t

