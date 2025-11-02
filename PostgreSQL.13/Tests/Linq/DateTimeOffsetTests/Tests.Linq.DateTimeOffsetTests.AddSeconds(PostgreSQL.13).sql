-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	Floor(Extract(second From (t."TransactionDate" + -35 * Interval '1 Second')))::Int
FROM
	"Transactions" t

