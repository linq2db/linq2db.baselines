-- PostgreSQL.9.5 PostgreSQL
SELECT
	Floor(Extract(second From ((t."TransactionDate" AT TIME ZONE 'UTC') + -35 * Interval '1 Second')))::Int
FROM
	"Transactions" t

