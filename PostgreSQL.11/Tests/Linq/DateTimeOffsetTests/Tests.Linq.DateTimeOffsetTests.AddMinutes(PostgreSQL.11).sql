-- PostgreSQL.11 PostgreSQL
SELECT
	Floor(Extract(minute From ((t."TransactionDate" AT TIME ZONE 'UTC') + -8 * Interval '1 Minute')))::Int
FROM
	"Transactions" t

