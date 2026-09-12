-- PostgreSQL.9.2 PostgreSQL
SELECT
	Floor(Extract(minute From ((t."TransactionDate" AT TIME ZONE 'UTC') + 5 * Interval '1 Minute')))::Int
FROM
	"Transactions" t

