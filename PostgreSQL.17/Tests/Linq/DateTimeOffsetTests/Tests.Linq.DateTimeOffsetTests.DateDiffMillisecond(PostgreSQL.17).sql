-- PostgreSQL.17 PostgreSQL.15 PostgreSQL12
SELECT
	ROUND(EXTRACT(EPOCH FROM (((((t."TransactionDate" AT TIME ZONE 'UTC') + 1 * Interval '1 Second') AT TIME ZONE 'UTC'))::timestamp - (t."TransactionDate")::timestamp)) * 1000)
FROM
	"Transactions" t

