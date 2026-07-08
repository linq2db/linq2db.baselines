-- PostgreSQL.14 PostgreSQL.13 PostgreSQL12

SELECT
	Floor(Extract(second From (t."TransactionDate" + 41 * Interval '1 Second')))::Int
FROM
	"Transactions" t

