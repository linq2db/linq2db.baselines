-- PostgreSQL.9.3 PostgreSQL
SELECT
	Floor(Extract(hour From ((t."TransactionDate" AT TIME ZONE 'UTC') + 22 * Interval '1 Hour')))::Int
FROM
	"Transactions" t

