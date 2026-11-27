-- PostgreSQL.15 PostgreSQL12
SELECT
	Floor(Extract(second From ((t."TransactionDate" AT TIME ZONE 'UTC') + 41 * Interval '1 Second')))::Int
FROM
	"Transactions" t

