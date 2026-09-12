-- PostgreSQL.12 PostgreSQL12
SELECT
	Floor(Extract(hour From ((t."TransactionDate" AT TIME ZONE 'UTC') + 22 * Interval '1 Hour')))::Int
FROM
	"Transactions" t

