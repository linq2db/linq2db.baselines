-- PostgreSQL.17 PostgreSQL.15 PostgreSQL13

SELECT
	Floor(Extract(second From (t."TransactionDate" + -35 * Interval '1 Second')))::Int
FROM
	"Transactions" t

