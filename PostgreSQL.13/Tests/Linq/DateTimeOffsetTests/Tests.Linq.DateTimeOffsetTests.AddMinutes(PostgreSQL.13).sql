-- PostgreSQL.13 PostgreSQL12
SELECT
	Floor(Extract(minute From ((t."TransactionDate" AT TIME ZONE 'UTC') + -8 * Interval '1 Minute')))::Int
FROM
	"Transactions" t

