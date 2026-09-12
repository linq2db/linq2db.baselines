-- PostgreSQL.11 PostgreSQL
SELECT
	Floor(Extract(hour From ((t."TransactionDate" AT TIME ZONE 'UTC') + Interval '1 Hour')))::Int
FROM
	"Transactions" t

