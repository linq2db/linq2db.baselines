-- PostgreSQL.13 PostgreSQL

SELECT
	Floor(Extract(hour From (t."TransactionDate" + 22 * Interval '1 Hour')))::Int
FROM
	"Transactions" t

