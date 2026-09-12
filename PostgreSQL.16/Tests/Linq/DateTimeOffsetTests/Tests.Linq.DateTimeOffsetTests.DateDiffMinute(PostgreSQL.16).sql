-- PostgreSQL.16 PostgreSQL.15 PostgreSQL12
SELECT
	EXTRACT(EPOCH FROM (((((t."TransactionDate" AT TIME ZONE 'UTC') + 100 * Interval '1 Minute') AT TIME ZONE 'UTC'))::timestamp - (t."TransactionDate")::timestamp)) / 60
FROM
	"Transactions" t

