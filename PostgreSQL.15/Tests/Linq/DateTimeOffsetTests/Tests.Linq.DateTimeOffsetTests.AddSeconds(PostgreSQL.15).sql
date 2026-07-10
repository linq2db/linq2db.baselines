-- PostgreSQL.15 PostgreSQL12

SELECT
	Floor(Extract(second From (t."TransactionDate" + -35 * Interval '1 Second')))::Int
FROM
	"Transactions" t

